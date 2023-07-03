#!/bin/bash

mkdir -p /var/www/html_certbot

wpdir=/var/www/html
#wpdir=WordPress/html

echo ${wpdir}

if [ ! -f "${wpdir}/wp-config.php" ]; then
    echo "copy sample config"
    cp ${wpdir}/wp-config-sample.php ${wpdir}/wp-config.php
fi

sed -i "s/^define( 'DB_USER', '.*' );/define( 'DB_USER', '$DB_USER' );/g ; s/^define( 'DB_NAME', '.*' );/define( 'DB_NAME', '$DB_NAME' );/g ; s/^define( 'DB_HOST', '.*' );/define( 'DB_HOST', '$DB_HOST' );/g ; s/^define( 'DB_PASSWORD', '.*' );/define( 'DB_PASSWORD', '$DB_PASSWORD' );/g ;" ${wpdir}/wp-config.php


#define( 'DB_PASSWORD', 'password_here' );
#define( 'DB_HOST', 'localhost' );
#define( 'DB_NAME', 'database_name_here' );
#define( 'DB_USER', 'username_here' );
