curl -OL https://github.com/nijialoop/toybricktest/raw/master/$1
sudo systemctl stop mmdvmhost.timer
sudo systemctl stop mmdvmhost.service
sudo rm /usr/local/bin/$1
sudo cp $1 /usr/local/bin/$1
sudo chmod +x /usr/local/bin/$1
sudo systemctl start mmdvmhost.service
sudo systemctl start mmdvmhost.timer
