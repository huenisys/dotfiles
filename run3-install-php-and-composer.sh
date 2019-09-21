#!/bin/bash

## vars
COMPOSER_HOME="/usr/local/share/composer"

cd

## php
sudo apt install -y php7.2-cli
sudo apt install -y curl zip unzip sqlite3 nginx php-memcached php-msgpack php-igbinary $(php_pack=(fpm cli gd mysql pgsql imap mbstring xml curl bcmath sqlite3 soap intl readline imagick zip yaml xdebug);printf 'php7.2-%s ' "${php_pack[@]}")

## composer

sudo addgroup composer_users
#sudo usermod -aG composer_users huenisys
sudo rm -rf $COMPOSER_HOME
sudo mkdir $COMPOSER_HOME
sudo chgrp composer_users $COMPOSER_HOME
sudo chmod g+sw,u+s $COMPOSER_HOME
echo "export COMPOSER_HOME='/usr/local/share/composer'" | sudo tee -a /etc/profile
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --filename=composer
sudo mv composer /usr/local/bin/
php -r "unlink('composer-setup.php');"
