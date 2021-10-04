#!/bin/bash
#
# This  script will pull a Docker image
#
# Pull the latest alpine image from Docker Hub.
echo "Let's pull a Docker image"
echo
docker image pull alpine:latest
sleep 3
# Confirm the pulled image:
docker images
sleep 3
# Pull the latest httpd image.
docker pull httpd:latest
sleep 3
# Note: If you don't pick the version, the latest version is assumed.
# Pull nginx 1.15
sleep 3
docker pull nginx version 1.15
sleep 3
docker pull nginx:1.15
sleep 3 
# To confirm that it is there:
docker images
sleep 3
# Compare the history
# Look at the history for both the httpd and nginx images.
docker history httpd
sleep 3
# Note the following command gives an error because the latest version is assumed:
docker history nginx
sleep 3
# When you specify the right version, the command succeeds:
docker history nginx:1.15
echo "Ok! That's it!"