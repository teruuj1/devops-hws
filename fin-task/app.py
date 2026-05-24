import logging
from flask import Flask
import datetime

app = Flask(__name__)
# Логируем в файл, который Promtail будет забирать
logging.basicConfig(
    filename='/var/log/app/app.log',
    level=logging.INFO,
    format='%(asctime)s [%(levelname)s] %(message)s'
)

@app.route('/')
def home():
    logging.info("Пользователь зашел на главную страницу")
    return "УРА! Приложение работает! Логи пишутся в Loki и доступны в Grafana."

@app.route('/test')
def test():
    logging.warning("Тестовый запрос /test")
    return "Тестовый эндпоинт. Проверь лог в Grafana."

if __name__ == '__main__':
    logging.info("Запуск Flask-приложения на порту 5000")
    app.run(host='0.0.0.0', port=5000)
