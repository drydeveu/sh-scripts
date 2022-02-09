#!/bin/sh
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt install apache2 -y
sudo apt install apache2-utils -y
sudo apt install php -y
sudo service apache2 restart
sudo apt install mariadb-server php-mysql -y
sudo service apache2 restart
sudo mysql_secure_installation
sudo apt install phpmyadmin -y
sudo phpenmod mysqli
sudo service apache2 restart
sudo ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
sudo apt install certbot python3-certbot-apache
