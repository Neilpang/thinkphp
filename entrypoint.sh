#!/bin/sh


if [ "$(ls /var/www/html/ | wc -l)" = "0" ]; then
  cp -r /var/www/tp5 /var/www/html/tp5
fi

exec /usr/local/bin/docker-php-entrypoint "$@"

