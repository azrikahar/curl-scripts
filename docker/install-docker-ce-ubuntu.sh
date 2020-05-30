#!/bin/bash
current_user=$(whoami)
echo "Installing Docker CE for Ubuntu via repository..." && \
sudo apt update && \
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
sudo apt update && \
sudo apt install -y docker-ce && \
echo "Adding user $current_user to Docker group to run docker cli without sudo..." && \
sudo usermod -aG docker $current_user && \
echo "Applying changes..." && \
newgrp docker && \
echo "Docker CE for Ubuntu installed successfully." && \
echo "=====================================================" && \
docker version