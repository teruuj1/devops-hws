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
- `roles/user_setup` – создание юзеров и SSH-ключей
- `roles/ssh_config` – отключение пароля, создание `/opt` папок
- `vars/users.yml` – список пользователей и их ключей
- `molecule/` – автотесты в изолированном Docker-контейнере

## Скрины
<img width="2877" height="1377" alt="Снимок экрана 2026-05-22 231006" src="https://github.com/user-attachments/assets/f4d6e1df-1374-46e8-9aa6-354b9f50d626" />
<img width="2855" height="1305" alt="Снимок экрана 2026-05-23 105036" src="https://github.com/user-attachments/assets/946fd5c4-46ee-4838-bd1a-44d2242dd6f8" />
<img width="2861" height="1309" alt="Снимок экрана 2026-05-23 105056" src="https://github.com/user-attachments/assets/351b4fa7-97ab-4aef-90d1-1c6ba9a8593c" />
<img width="2850" height="1346" alt="Снимок экрана 2026-05-23 105117" src="https://github.com/user-attachments/assets/2075ced5-16f9-41e3-905e-91909f6f4ae4" />
<img width="2863" height="222" alt="Снимок экрана 2026-05-23 105137" src="https://github.com/user-attachments/assets/2b1d0422-f35c-4914-84ef-4db87f87c887" />
<img width="1039" height="447" alt="Снимок экрана 2026-05-23 110231" src="https://github.com/user-attachments/assets/42c16564-ac77-4761-8e65-b8faf3cf0076" />
