sudo apt install curl -y

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo bash - &&\
sudo apt install -y nodejs

[[ ! -f ./install-pm2.sh ]] || ./install-pm2.sh

