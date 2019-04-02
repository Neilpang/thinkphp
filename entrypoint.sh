#!/bin/sh


if [ "$(ls /var/www/html/tp5/application | wc -l)" = "0" ]; then
  cp -r /var/www/application/* /var/www/html/tp5/application/
fi

exec /usr/local/bin/docker-php-entrypoint "$@"

