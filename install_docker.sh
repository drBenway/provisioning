#!/bin/sh
sudo apt-get update
sudo apt-get upgrade

# --- add docker ---
# see http://www.westworld.be/installing-docker-on-linux-mint/ for details on Mint
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add Dockers official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#Add the docker repository for the xenial build
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER

sudo apt-get install docker-compose