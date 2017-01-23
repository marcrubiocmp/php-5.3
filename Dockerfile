FROM tomsowerby/php-5.3:cli
RUN apt-get update && apt-get -q -y install libmysqlclient-dev netcat patch
RUN docker-php-ext-install mbstring pdo_mysql zip
RUN curl -o /usr/local/bin/composer https://getcomposer.org/composer.phar
RUN chmod +x /usr/local/bin/composer
