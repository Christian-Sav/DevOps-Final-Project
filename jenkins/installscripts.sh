#!/bin/bash
sudo apt-get update
sudo apt install curl -y
curl https://get.docker.com | sudo bash

sudo usermod -aG docker $(whoami)

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


sudo docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash - 
sudo apt install -y nodejs 


curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl


sudo apt install -y unzip wget
rm terraform_*_linux_*.zip
wget https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_linux_amd64.zip
unzip terraform_*_linux_*.zip
sudo mv terraform /usr/local/bin

## Check if terraform working properly
terraform --version

aws configure set aws_access_key_id "$ACCESS_KEY"
aws configure set aws_secret_access_key "$SECRET_KEY"
aws configure set region "eu-west-2"
aws configure set output "json"