#!/bin/sh

/opt/wp/wp-conf-templ.sh

/opt/wp/run_fpm.sh >>/tmp/fpm_out.log 2>&1 &

#/usr/sbin/php-fpm8.2 --nodaemonize --fpm-config /etc/php/8.2/fpm/php-fpm.conf

#/opt/wp/run_nginx.sh
/sbin/nginx -c /etc/nginx/nginx.conf -g 'daemon off;'

