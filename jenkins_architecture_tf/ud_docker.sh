#!/bin/bash

sudo apt update
sudo apt install build-essential 
sudo apt install -y default-jre
sudo apt-get install pkg-config

sudo apt install libmysqlclient-dev -y

curl -O https://raw.githubusercontent.com/djtoler/automated_installation_scripts/main/auto-python.sh
curl -O https://raw.githubusercontent.com/djtoler/automated_installation_scripts/main/auto-nodejs_install.sh
curl -O https://raw.githubusercontent.com/djtoler/automated_installation_scripts/main/auto-aws_cli.sh


chmod +x auto-python.sh
chmod +x auto-nodejs_install.sh
chmod +x auto-aws_cli.sh

./auto-python.sh
./auto-nodejs_install.sh
./auto-aws_cli.sh

curl -O https://raw.githubusercontent.com/djtoler/automated_installation_scripts/main/auto-docker_install.sh
chmod +x auto-docker_install.sh
sudo ./auto-docker_install.sh
