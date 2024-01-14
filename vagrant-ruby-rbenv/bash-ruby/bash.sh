#!/bin/bash

# Update the package index on the Vagrant VM:
sudo apt-get -y update

# Install the dependencies required to install Ruby:
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

# Clone the rbenv repository from GitLab into the directory ~/.rbenv:
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# Add rbenv to the bash so that it loads every time you open a Terminal:
echo 'eval "$(~/.rbenv/bin/rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

