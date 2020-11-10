#! /bin/bash
sudo yum update -y
sudo amazon-linux-extras install ansible2 -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins --nogpgcheck -y
sudo yum install java-1.8.0-openjdk-devel.x86_64 : OpenJDK Development Environment 8 -y
sudo yum install docker -y
sudo service docker start
sudo usermod -aG docker $USER             
sudo systemctl enable docker
sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose 
sudo chmod +x /usr/local/bin/docker-compose 
sudo cp /usr/local/bin/docker-compose /usr/bin/
sudo docker-compose up -d
