# Задание 5: Docker Compose

Развертывание стека Nginx + Python App + PostgreSQL в изолированной сети `10.10.10.0/28`.

## Особенности
- **Сеть:** Bridge, подсеть `/28`.
- **Очередность:** `depends_on` гарантирует запуск БД до приложения, а приложения до Nginx.
- **Aliases:** База данных доступна внутри сети как `new_db` и `dev_db`.
- **Volumes:** Конфиги приложения монтируются хостовой папкой, данные БД хранятся в именованном томе `db_data`.
- **Порты:** Nginx доступен на хосте по порту `8080`.

## Запуск
```bash
docker-compose up -d
```

## Проверка
- Открыть в браузере `http://localhost:8080`
- Проверить доступность БД по алиасам из контейнера web

## Скрины
<img width="1431" height="146" alt="Снимок экрана 2026-05-23 131538" src="https://github.com/user-attachments/assets/90db0509-1772-4086-9e5e-29c9c4f4ee83" />
<img width="2567" height="86" alt="Снимок экрана 2026-05-23 130529" src="https://github.com/user-attachments/assets/3cb21016-88ba-4b3a-8b47-623400e0d44c" />
<img width="2876" height="337" alt="Снимок экрана 2026-05-23 131154" src="https://github.com/user-attachments/assets/cb23e2e9-3136-420a-acb0-1c152eda1e6d" />
<img width="2878" height="332" alt="Снимок экрана 2026-05-23 131229" src="https://github.com/user-attachments/assets/3313612d-aba2-480f-a2a8-4df8185f0f09" />
<img width="2878" height="265" alt="Снимок экрана 2026-05-23 131259" src="https://github.com/user-attachments/assets/432947d4-3af2-4c77-8fc6-efe72f1abe7f" />
<img width="1992" height="1429" alt="Снимок экрана 2026-05-23 131342" src="https://github.com/user-attachments/assets/effcd2d5-d0f0-4a19-b422-90c068eaf51a" />
<img width="1998" height="1157" alt="Снимок экрана 2026-05-23 131355" src="https://github.com/user-attachments/assets/77e37c8a-91cf-4d4d-9974-d35d5702d06c" />
