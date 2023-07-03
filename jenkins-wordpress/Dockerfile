FROM debian:stable-slim

RUN apt update && apt install -y nginx php8.2-fpm php8.2-mysql && \
    apt clean && rm -rf /var/lib/apt/lists /var/cache/apt/archives && \
    mkdir -p /opt/wp/ && rm -f /etc/nginx/sites-enabled/* 

COPY run*.sh wp-conf-templ.sh /opt/wp/
COPY php-fpm.conf /etc/php/8.2/fpm/pool.d/wordpress.conf
COPY wordpress-fpm.conf /etc/nginx/conf.d/
COPY WordPress/ /var/www/

CMD /opt/wp/run.sh

