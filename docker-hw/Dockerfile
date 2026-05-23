FROM ubuntu:24.04

MAINTAINER "Shuavalova S.A."

ENV APP_ENV=production
ENV DB_PASS=super_secret

# обновляем список, ставим Nginx, Postgres и утилиты, чистим кэш
RUN apt-get update && \
    apt-get install -y nginx postgresql curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

# копируем файл из текущей папки в образ
COPY index.html .

# копируем и автоматически распаковываем архив
ADD config.tar.gz /etc/nginx/sites-available/

# создаем пользака для демонстрации инструкции USER
RUN useradd -m devuser

# переключаемся на созданного пользователя (?)
USER devuser

# возвращаемся в root, так как сервисам нужны права для запуска портов и баз данных
USER root

VOLUME ["/var/lib/postgresql/data", "/var/log/nginx"]

EXPOSE 80 5432

COPY start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
