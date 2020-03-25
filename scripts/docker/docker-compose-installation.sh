#!/bin/bash
latest_version = $(curl -s https://github.com/docker/compose/releases/latest | awk -F[\"\"] '{print $2}' | cut -d'/' -f8)
sudo curl -L https://github.com/docker/compose/releases/download/$latest_version/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && 
sudo chmod +x /usr/local/bin/docker-compose