sudo apt update

#install nginx
sudo apt install -y nginx
# check firewall
sudo ufw allow http
sudo ufw reload
#install php
sudo apt install -y php8.1-fpm
sudo apt install -y php8.1-common php8.1-mysql php8.1-cgi php8.1-mbstring php8.1-curl php8.1-gd php8.1-xml php8.1-xmlrpc php8.1-pear

