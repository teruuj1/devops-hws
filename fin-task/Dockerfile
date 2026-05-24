# зависимости
FROM python:3.11-slim AS builder
WORKDIR /build
COPY requirements.txt .
RUN pip install --no-cache-dir --target=/install -r requirements.txt

# приложение
FROM python:3.11-slim
WORKDIR /app

# копируем только собранные зависимости (без исходников pip)
COPY --from=builder /install /usr/local/lib/python3.11/site-packages

# копируем код приложения
COPY app.py .

# директория для логов
RUN mkdir -p /var/log/app && chmod 777 /var/log/app

CMD ["python", "app.py"]
