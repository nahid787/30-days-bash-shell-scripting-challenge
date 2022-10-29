#!/bin/bash
# Author: Morshed Hasan
# Date: Oct 29, 2022
# Modification date: Oct 29, 2022
# Description: This script create apache2 virtual host with your given domain name

echo "Welcome to virtual host creation land"
echo 
read -p "If you want to download and install apache2 enter '1', if apache2 installed and started then '2': " yes1

if [ $yes1 -eq 1 ] 
then
	echo Starting apache2 install
	echo please wait...
	apt install apache2 -y
	systemctl start apache2
else
	echo follow next instruction!
fi

read -p "Enter your domain name: " domain
mkdir -p /var/www/$domain/public_html
chown -R $USER:$USER /var/www/$domain/public_html
chmod -R 755 /var/www
echo Welcome to your $domain website > /var/www/$domain/public_html/index.html

cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/$domain.conf

echo
read -p "Enter Admin email: " mail
echo "
<VirtualHost *:80>
  
    ServerAdmin $mail
    ServerName $domain
    ServerAlias www.$domain
    DocumentRoot /var/www/$domain/public_html
    
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost> " > /etc/apache2/sites-available/$domain.conf

a2ensite $domain.conf
a2dissite 000-default.conf
systemctl reload apache2
apache2ctl configtest
systemctl reload apache2

#read -p "Enter ip: " ip
#echo "$ip	$domain" >> /etc/hosts
