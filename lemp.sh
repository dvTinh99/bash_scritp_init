sudo apt update

#install nginx
sudo apt install -y nginx
# check firewall
sudo ufw allow http
sudo ufw reload
#install php
sudo apt install -y php8.1-fpm
sudo apt install -y php8.1-common php8.1-mysql php8.1-cgi php8.1-mbstring php8.1-curl php8.1-gd php8.1-xml php8.1-xmlrpc php8.1-pear

#remove defautl config
cd /etc/nginx/sites-enabled
sudo chmod -R 777 ./
#dowload tinh.conf
sudo rm -r *
sudo wget "https://raw.githubusercontent.com/dvTinh99/bash_scritp_init/master/tinhdoan.conf"

# verify php fpm work
cd /var/www/html
sudo chmod -R 777 ./
sudo rm -r *
sudo echo '<?php phpinfo(); ?>' > index.php
sudo systemctl restart nginx

#install mysql
sudo apt install -y mysql-server
sudo mysql 
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'tinhdoan';"

# sudo apt install -y phpmyadmin
