#!/bin/bash
# Запуск Postgres в фоне
service postgresql start
# Запуск Nginx в фоне
nginx -g 'daemon off;' &
# Держим контейнер живым
wait
