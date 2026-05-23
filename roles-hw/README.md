# Задание 3: Ansible Roles + Molecule

Те же задачи, что в задании 2, но разбиты на роли (`user_setup`, `ssh_config`). Пользователи и ключи вынесены в `vars/`. Протестировано через Molecule (Docker driver).

## Как запускать
```bash
# Обычный запуск
ansible-playbook -i inventory.ini playbook.yml

# Тестирование ролей
molecule test
```

## Структура
- roles/user_setup – создание юзеров и SSH-ключей
- roles/ssh_config – отключение пароля, создание /opt папок
- vars/users.yml – список пользователей и их ключей
- molecule/ – автотесты в изолированном Docker-контейнере

## Скрины


