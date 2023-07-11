#install PHP
echo "Install PHP"
sudo apt install php8.1-fpm php8.1-dom php8.1-curl php8.1-mysql php8.1-gd php8.1-xml php8.1-bcmath php8.1-gmp php8.1-zip php8.1-intl -y
#install Composer
echo "Install PHP"
cd ~
sudo curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
sudo php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
echo "check composer"
composer
#install git
echo "Install Git"
sudo apt install git -y
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
#Install Node JS
echo "Install Node JS 16"
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm install v16.14.0
node -v
