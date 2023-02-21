#!/bin/bash
# Update Repository Index
sudo apt-get update

# Add docker package reliability
# f - Set Content-Type of http request header to multipart/form-data
# s - silent, omitting progress and errors
# S - use SSL
# L - Even if the result of curl is Redirection, the action continues with the URL
# The apt-key after the pipe adds the package to the key list to recognize the downloaded package as an authorized package.
# (apt manages authorized packages by default as a key list)
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Add Repository to install docker
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# Update Repository Index
sudo apt-get update

# docker install
sudo apt-get install -y docker.io

# Set the docker socket /var/run/docker.sock permission to 666 so that other users can access it
sudo chmod 666 /var/run/docker.sock

# Install Docker Compose (version 1.29.2)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/ bin/docker-compose

# Grant permission to run docker compose
sudo chmod +x /usr/local/bin/docker-compose

# Do not terminate containers when restarting docker service
sudo su -c 'printf "{\n\t\"live-restore\": true\n}" > /etc/docker/docker.json'

# restart docker service
sudo systemctl restart docker