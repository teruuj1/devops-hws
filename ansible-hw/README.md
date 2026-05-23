# Задание 2: Ansible Playbook

Playbook создаёт пользователя, настраивает sudo, SSH-аутентификацию по ключам, отключает парольный вход и создаёт рабочую папку в `/opt`.

## Как запускать
```bash
ansible-playbook -i inventory.ini playbook.yml
```

## Результат
- Пользователь `devuser` создан и добавлен в sudo
- SSH-ключ скопирован, парольная аутентификация отключена
- Директория `/opt/devuser_workdir` с правами 770 создана
- Все изменения идемпотентны

## Скрины
<img width="2301" height="1012" alt="Снимок экрана 2026-05-22 215259" src="https://github.com/user-attachments/assets/9d375b21-1109-4a18-9a68-8438418e0d9b" />
<img width="1317" height="262" alt="Снимок экрана 2026-05-22 220130" src="https://github.com/user-attachments/assets/f98a4c73-b92c-4901-96cc-48ca5ae30d21" />
