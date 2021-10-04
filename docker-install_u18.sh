#!/bin/bash
# This script will install Docker on Ubuntu version 18.04
#
######################
# Created 2021-10-02 #
######################
#
echo " Running an update real quick ..."
apt-get update
sleep 3
apt-get install \
apt-transport-https \
ca-certificates \
curl \
gnupg \
lsb-release
sleep 3
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sleep 3
apt-get update
sleep 3
echo "Ok You now we installing Docker ..."
apt-get install docker-ce docker-ce-cli containerd.io
sleep 3
docker run hello-world
echo "Done. You're all set! "




