#init
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#install docker-ce
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker

#install docker-compose -v = 2.3.3
mkdir -p ~/.docker/cli-plugins/
curl -SL https://github.com/docker/compose/releases/download/v2.3.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
docker compose version

#mkdir /var/www
sudo mkdir /var/www

#clone lavadock
cd /var/www/
sudo git clone https://github.com/Laradock/laradock.git
sudo cp .env.example .env
sudo docker compose up -d nginx mysql phpmyadmin

