From neilpang/php:7

RUN apt-get update && apt-get install -y git-core \
   && apt-get -y autoremove && apt-get clean all && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
RUN composer create-project --keep-vcs topthink/think tp5
COPY index.php /var/www/html/
RUN sed -i 's,https://tajs.qq.com,#,' /var/www/html/tp5/application/index/controller/Index.php \
  && sed -i 's,https://e.topthink.com,#,' /var/www/html/tp5/application/index/controller/Index.php \
  && cp -r /var/www/html/tp5/application /var/www/application
VOLUME ["/var/www/html/tp5/application"]
