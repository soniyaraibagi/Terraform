<!-- This repository contains the configuration files and setup for a Vagrant environment with Nodejs apt. -->
```bash
# Setup Instructions

# 1. Clone this repository.
# 2. Initialize Vagrant Run the following command to create a Vagrantfile
     vagrant init hashicorp/bionic64

# 3. Start Vagrant on Virtual Machine
     vagrant up

# 4. Access Vagrant VM Opens the ubuntu welcome page
     vagrant vssh

# 5. Update the package index on the Vagrant VM
     sudo apt-get update

# 6. Installing the PPA in order to get access to its contents.
     curl -sL https://deb.nodesource.com/setup_17.x -o /tmp/nodesource_setup.sh

# 7. Contents of script,The PPA will be added to your configuration and your local package cache will be updated automatically
     sudo bash /tmp/nodesource_setup.s

# 8. Install the Node.js package
     sudo apt install nodejs

# 9. node -v
     17.3.0
   -->
