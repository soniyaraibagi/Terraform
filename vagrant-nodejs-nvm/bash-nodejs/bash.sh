#!/bin/bash

# Update the package index
sudo apt-get update

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Source the .bashrc file to use NVM
source ~/.bashrc