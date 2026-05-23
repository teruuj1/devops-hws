# Задание 1: Bash-скрипт настройки окружения

Скрипт автоматизирует создание группы `dev`, выдачу ей `sudo` без пароля, создание рабочих директорий `<user>_workdir` и настройку прав доступа.

## Как запустить
```bash
chmod +x setup_dev_env.sh
sudo ./setup_dev_env.sh -d /путь/к/папке
# или без ключа, тогда скрипт запросит путь интерактивно
```

## Результат
- Группа `dev` добавлена в `/etc/sudoers.d/dev`
- Для всех пользователей (у которых UID>=1000) созданы директории с правами 660 + (+x) для входа
- Группа `dev` имеет чтение через ACL (setfacl)
- Лог дублируется в stdout и в файл `setup_dev.log`

## Скрины
<img width="1244" height="481" alt="Снимок экрана 2026-05-22 202304" src="https://github.com/user-attachments/assets/255be7d3-31f0-48fd-bac4-2b232f6695ce" />
<img width="1277" height="179" alt="Снимок экрана 2026-05-22 202453" src="https://github.com/user-attachments/assets/82479fbd-a7d7-4282-8106-308fc97d23bf" />
