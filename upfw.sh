curl -OL https://github.com/nijialoop/toybricktest/raw/master/1416C_DUAL.bin
sudo systemctl stop mmdvmhost.timer
sudo systemctl stop mmdvmhost.service
sudo stm32flash -b 115200 -v -w 1416C_DUAL.bin -g 0x0 -R -i 20,-21,21:-20,-21,21 /dev/ttyAMA0
sudo systemctl start mmdvmhost.service
sudo systemctl start mmdvmhost.timer