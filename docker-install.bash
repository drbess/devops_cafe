#!/bin/bash
#
# Docker Install Script
########################
#
# 2021-09-27
#
########################
echo "Ok so when isntalling software, the goal is to work smart not hard..."
echo "     "
echo "This script will install Docker and all it's dependences, because typing commands is doing the most!"
echo "     "
echo "WARNING This Docker install is for CentOS 7, Fedora 30+ and RHEL 7 & 8 ONLY"
echo  
# Install the packages:
yum install -y yum-utils lvm2 device-mapper-persistent-data
sleep 5
# Alternatively, 
# if the packages are likely installed, 
# the following command can be used to 
# verify the installation without installing 
# the package if one is missing. 
# Each of these commands must be run and verified individually:
rpm -qa |grep yum-utils
rpm -qa |grep lvm2
rpm -qa |grep device-mapper-persistent-data
sleep 3

# Add the repository:
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Confirm the repository has been added by checking the repo directory:
ls /etc/yum.repos.d/

# Install Docker:
yum install docker-ce
sleep 3
# Enable and Start Docker:
systemctl enable docker
systemctl start docker
sleep 3
# Add your user to the Docker group:
usermod -a -G docker cloud_user
sleep 3 
Verify the addition:
grep docker /etc/group
sleep 7
#Create Your First Container
echo "Creating the hello-world container ...."
docker run hello-world
