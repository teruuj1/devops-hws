# Задание 4: Dockerfile (Web + DB в одном образе)

Dockerfile создает образ на базе Ubuntu, устанавливает Nginx и PostgreSQL, настраивает переменные окружения, тома и пользователя. Запуск сервисов осуществляется через скрипт `start.sh`.

## Использованные инструкции
- `FROM`, `MAINTAINER`, `ENV`
- `RUN` (установка пакетов, создание юзера)
- `WORKDIR`, `COPY`, `ADD` (распаковка конфига)
- `USER`, `VOLUME`, `EXPOSE`, `CMD`

## Сборка
```bash
docker build -t shuvalova_sa_image_2026-05-23 .
```

## Скрины
<img width="2858" height="1236" alt="Снимок экрана 2026-05-23 121409" src="https://github.com/user-attachments/assets/e3654ef1-d1f6-40dd-9289-4d7c14b41722" />
<img width="2852" height="352" alt="Снимок экрана 2026-05-23 121443" src="https://github.com/user-attachments/assets/8ad67b41-c2a3-44ec-b555-3cc682f83e11" />
