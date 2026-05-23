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
