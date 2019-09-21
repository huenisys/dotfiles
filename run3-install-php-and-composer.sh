#!/bin/bash

cd

## php
sudo apt install -y php7.2-cli
sudo apt install -y curl zip unzip sqlite3 nginx php-memcached php-msgpack php-igbinary $(php_pack=(fpm cli gd mysql pgsql imap mbstring xml curl bcmath sqlite3 soap intl readline imagick zip yaml xdebug);printf 'php7.2-%s ' "${php_pack[@]}")

## composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"
