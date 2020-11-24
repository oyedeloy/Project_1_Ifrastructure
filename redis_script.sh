#! /bin/bash
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -aG docker $USER             
sudo systemctl enable docker
sudo yum install python-pip -y
pip install docker-py 
mkdir config
mkdir config/redis
mkdir config/sentinel

