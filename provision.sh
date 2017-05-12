#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y nano wget curl zip unzip git

# Development Tools from Package Manager
apt-get install -y build-essential python python-pip python3 python3-pip

# Install Docker
if [ ! -f /usr/bin/docker ]; then
  echo "Install Docker"
  apt-get -y install apt-transport-https ca-certificates curl
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) edge"
  apt-get update
  apt-get -y install docker-ce
  systemctl enable docker
fi
