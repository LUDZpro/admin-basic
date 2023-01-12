# set the ripository to the latest version of php7.4 
apt-get install software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt-get update
# install the php7.4-fpm package and its dependencies and the php7.4-cli
apt-get install php7.4-fpm php7.4-cli -y
# install the php extensions 
apt-get install php7.4-common \
php7.4-mysql \
php7.4-xml \
php7.4-curl \
php7.4-json \
php7.4-gd \
php7.4-mbstring \
php7.4-zip \
php7.4-bcmath \
php7.4-intl \
php7.4-soap \
php7.4-xmlrpc \
php7.4-ldap \
php7.4-imagick \
php7.4-redis \
php7.4-memcached \
php7.4-xdebug \
php7.4-sqlite3 \
php7.4-pgsql \
php7.4-bz2 \
php7.4-gmp \
php7.4-odbc -y
# enable the php7.4-fpm service and its extensions
systemctl enable php7.4-fpm
systemctl start php7.4-fpm

#install composer 
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
# set the composer permissions 
chmod +x /usr/local/bin/composer

