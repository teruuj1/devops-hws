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

## Скрины
<img width="1480" height="446" alt="Снимок экрана 2026-05-24 125053" src="https://github.com/user-attachments/assets/9c3b849c-e3c8-4d26-ac12-eb29b7417afc" />
<img width="1883" height="165" alt="Снимок экрана 2026-05-24 125122" src="https://github.com/user-attachments/assets/84b92192-bb40-4856-8705-ab6a1d946d36" />
<img width="1065" height="171" alt="Снимок экрана 2026-05-24 125134" src="https://github.com/user-attachments/assets/1e487a72-4aa6-4539-927c-62c0bbd5a153" />
<img width="2879" height="1273" alt="Снимок экрана 2026-05-24 125155" src="https://github.com/user-attachments/assets/936daa7d-6262-441c-a59b-732d90079c67" />
<img width="2879" height="974" alt="Снимок экрана 2026-05-24 125353" src="https://github.com/user-attachments/assets/be6cf4ae-934d-4992-935d-64fc457b4d27" />
<img width="2834" height="1192" alt="Снимок экрана 2026-05-24 125423" src="https://github.com/user-attachments/assets/585ee9a1-d3cd-40e6-9b5b-0ade27e5de77" />
