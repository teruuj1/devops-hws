#!/bin/bash
set -e

# Дефолтный тег
TAG="latest"

# флаг -t
while getopts "t:" opt; do
  case $opt in
    t) TAG="$OPTARG" ;;
    *) echo "О нет, ошибка бро. Использование: $0 -t <тег_образа>" ; exit 1 ;;
  esac
done

echo "Сборка образа final-app:$TAG ..."
docker build -t final-app:$TAG .

echo "Очистка предыдущих контейнеров..."
docker-compose down --remove-orphans 2>/dev/null || true

echo "Запуск..."
docker-compose up -d

echo ""
echo "Ура! Готово!"
echo "Приложение: http://localhost:5000"
echo "Grafana: http://localhost:3000 (логин: admin, пароль: admin)"
echo "Использован тег: $TAG"
