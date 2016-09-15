#!/bin/bash
set -eo pipefail
shopt -s nullglob

if [ -z ${MYSQL_DATABASE} ]; then
    echo "You need to specify MYSQL_DATABASE"
    exit 1
fi

if [ -z ${MYSQL_USER} ]; then
    echo "You need to specify MYSQL_USER"
    exit 1
fi

if [ -z ${MYSQL_PASSWORD} ]; then
    echo "You need to specify MYSQL_PASSWORD"
    exit 1
fi

if [ -z ${MYSQL_HOST} ]; then
    echo "You need to specify DB_HOST"
    exit 1
fi 

sed -i -e "s/##MYSQL_DATABASE##/$MYSQL_DATABASE/g" /var/www/default/index.php
sed -i -e "s/##MYSQL_USER##/$MYSQL_USER/g" /var/www/default/index.php
sed -i -e "s/##MYSQL_PASSWORD##/$MYSQL_PASSWORD/g" /var/www/default/index.php
sed -i -e "s/##MYSQL_HOST##/$MYSQL_HOST/g" /var/www/default/index.php

/usr/sbin/apache2ctl -D FOREGROUND

