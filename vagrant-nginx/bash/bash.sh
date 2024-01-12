#!/bin/bash

# Update the package index
sudo apt-get update

# Install Nginx
sudo apt-get install -y nginx

# Start Nginx
sudo service nginx start