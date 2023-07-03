FROM debian:stable-slim

#RUN apt autoremove --purge && \
#    apt update && apt upgrade -y && \
RUN apt update && apt install -y nginx php8.2-fpm php8.2-mysql && \
    apt clean && rm -rf /var/lib/apt/lists /var/cache/apt/archives

RUN mkdir -p /opt/wp/ && rm -f /etc/nginx/sites-enabled/* 
#    mv /var/www/html /var/www/html.back

COPY run*.sh wp-conf-templ.sh /opt/wp/
COPY php-fpm.conf /etc/php/8.2/fpm/pool.d/wordpress.conf
COPY wordpress-fpm.conf /etc/nginx/conf.d/
COPY WordPress/ /var/www/
#ADD WordPress/wp.tar.gz /var/www/

CMD /opt/wp/run.sh

