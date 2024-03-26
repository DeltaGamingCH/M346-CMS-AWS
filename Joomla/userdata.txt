#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install mysql-server -y
sudo apt-get install php libapache2-mod-php php-mysql -y
sudo apt-get install php-cli -y
sudo apt-get install php-fpm -y
sudo apt-get install php-json -y
sudo apt-get install php-pdo -y
sudo apt-get install php-mysql -y
sudo apt-get install php-zip -y
sudo apt-get install php-gd  -y
sudo apt-get install php-mbstring -y
sudo apt-get install php-curl -y
sudo apt-get install php-xml -y
sudo apt-get install php-pear -y
sudo apt-get install php-bcmath -y
sudo a2enmod php7.2
sudo systemctl restart apache2
sudo wget https://downloads.joomla.org/cms/joomla3/3-10-7/Joomla_3-10-7-Stable-Full_Package.zip
sudo apt-get install unzip
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
sudo unzip Joomla_3-10-7-Stable-Full_Package.zip -d /var/www/html/
sudo rm /var/www/html/index.html
