#!/bin/sh


if [ "$(ls /var/www/html/tp5/application | wc -l)" = "0" ]; then
  cp -r /var/www/tp5/application/* /var/www/html/tp5/application
  cp  /var/www/tp5/route/* /var/www/html/tp5/route
fi

exec /usr/local/bin/docker-php-entrypoint "$@"

