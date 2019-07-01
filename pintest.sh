sudo systemctl stop mmdvmhost.timer
sudo systemctl stop mmdvmhost.service
i2cdetect -y 1
sudo stm32flash -u -g 0x0 -R -i 20,-21,21:-20,-21,21 /dev/ttyAMA0
sudo systemctl start mmdvmhost.service
sudo systemctl start mmdvmhost.timer

