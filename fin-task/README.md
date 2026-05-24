# Итоговая работа: Web-приложение + Централизованные логи

Минималистичное Flask-приложение, запакованное в Docker. Логи приложения собираются стеком `Promtail → Loki → Grafana`. Сборка и запуск автоматизированы bash-скриптом с параметром тега.

## Структура
- `app.py` – веб-приложение с логированием в файл
- `Dockerfile` – Multi-stage сборка
- `promtail-config.yaml` – агент чтения логов
- `grafana/provisioning/` – авто-подключение Loki в Grafana
- `docker-compose.yml` – оркестрация 4 сервисов
- `run.sh` – скрипт сборки/запуска с флагом `-t`

## Как запускать
```bash
./run.sh -t v1.0
```

## После запуска:
- Приложение: http://localhost:5000
- Grafana: http://localhost:3000 (admin/admin)
