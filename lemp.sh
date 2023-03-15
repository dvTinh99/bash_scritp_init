sudo apt update

#install nginx
sudo apt install -y nginx
# check firewall
sudo ufw allow http
sudo ufw reload
#install php
sudo apt install -y php-fpm
sudo apt install -y php-common php-mysql php-cgi php-mbstring php-curl php-gd php-xml php-xmlrpc php-pear

