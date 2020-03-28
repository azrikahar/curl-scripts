#!/bin/bash
curl -fsSL https://get.docker.com/ | sh && \
sudo systemctl start docker && \
sudo systemctl enable docker && \
sudo usermod -aG docker $(whoami) && \
newgrp docker && \
echo "Docker CE installed successfully."