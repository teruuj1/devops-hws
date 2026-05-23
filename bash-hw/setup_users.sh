#!/bin/bash
# Логирование в stdout и файл
LOGFILE="$(pwd)/setup_dev.log"
exec > >(tee -a "$LOGFILE") 2>&1

# Чтение ключа -d или запрос пути
BASE_DIR=""
while getopts "d:" opt; do
	case $opt in
		d) BASE_DIR="$OPTARG" ;;
	esac
done

if [ -z "$BASE_DIR" ]; then
	echo "Путь не указан. Введите базовую директорию для workdir : "
	read -r BASE_DIR
fi
mkdir -p "$BASE_DIR"

# Создание группы dev
if getent group dev > /dev/null; then
	echo "Увы, группа dev уже существует"
else
	sudo groupadd dev
	echo "Супер! Группа dev создана"
fi

# Настройка sudo без пароля
SUDO_FILE="/etc/sudoers.d/dev"
if [ -f "$SUDO_FILE" ]; then
	echo "Правило sudo для dev уже настроено"
else
	echo "%dev ALL=(ALL) NOPASSWD:ALL" | sudo tee "$SUDO_FILE" > /dev/null
	sudo chmod 0440 "$SUDO_FILE"
	echo "Права sudo без пароля выданы группе dev"
fi

# Поиск не-системных пользователей (UID >= 1000)
USERS=$(awk -F: '$3 >= 1000 && $1 != "nobody" && $1 != "$(whoami)" {print $1}' /etc/passwd)

if [ -z "$USERS" ]; then
	echo "Не найдено обычных пользователей для обработки"
	exit 0
fi

for USER in $USERS; do
	echo "Обработка пользователя $USER"

	# Добавляем в группу dev
	sudo usermod -aG dev "$USER" 2>/dev/null || true

	# Созданем директории
	WORKDIR="$BASE_DIR/${USER}_workdir"
	sudo mkdir -p "$WORKDIR"

	# Права и владелец (660 для файлов)
	sudo chown "${USER}:${USER}" "$WORKDIR"
	sudo chmod 660 "$WORKDIR"

	# Тут для директорий еще бит исполнения (x) обязателен для входа поэтому
	# добавляем его владельцу и группе, чтобы директория была рабочей
	sudo chmod u+x,g+x "$WORKDIR"

	# Чтение для группы dev через ACL
	sudo setfacl -m g:dev:r-x "$WORKDIR"

	echo "Директория $WORKDIR создана и настроена"
done

echo "Лог сохранён в $LOGFILE"
