#!/bin/bash
current_user=$(whoami)
echo "Installing Docker CE..." && \
curl -fsSL https://get.docker.com/ | sh && \
echo "Starting Docker daemon..." && \
sudo systemctl start docker && \
echo "Making sure Docker daemon starts on server reboot..." && \
sudo systemctl enable docker && \
echo "Adding user $current_user to Docker group to run docker cli without sudo..." && \
sudo usermod -aG docker  && \
echo "Applying changes..." && \
newgrp docker && \
echo "Docker CE installed successfully."