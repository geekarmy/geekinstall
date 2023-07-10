#install PHP
echo "Install PHP"
apt install php8.1-fpm -y
#install Composer
echo "Install PHP"
cd ~
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
echo "check composer"
composer
#install git
echo "Install Git"
apt install git -y
#install nginx and cerbot
echo "install Nginx"
sudo apt update
sudo apt install nginx -y
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
echo "install Cerbot"
sudo apt install certbot python3-certbot-nginx -y
# Install MySQL Server
echo "install mysql"
sudo apt install mysql-server
