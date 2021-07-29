apt update
apt install -y git
apt install -y zip
apt install -y sqlite
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
mv composer.phar /usr/local/bin/composer
composer create-project -n --prefer-dist laravel/lumen /src/sms-api
php -S 0.0.0.0:8009 -t /src/sms-api/public