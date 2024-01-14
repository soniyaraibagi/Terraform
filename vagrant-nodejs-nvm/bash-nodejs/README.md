# Installing nodejs nvm for bash provisioner

```bash
 # Setup Instructions

# 1. Initialize Vagrant Run the following command to create a Vagrantfile
     vagrant init hashicorp/bionic64

# 2. Start Vagrant on Virtual Machine
     vagrant up

# 3. bash.sh commands
    # Update the package index
    sudo apt-get update

    # Install NVM (Node Version Manager)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

    # Source the .bashrc file to use NVM
    source ~/.bashrc
  ```
