#!/bin/bash -x

sudo add-apt-repository ppa:webupd8team/java
sudo apt update
sudo apt -y install oracle-java8-installer
sudo apt -y install oracle-java8-set-default
javac -version
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt -y upgrade
sudo apt -y install jenkins
sudo systemctl stop jenkins.service
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
sudo ufw allow 8080
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

