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

# 6.Download the contents of script using bash
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# 7. installs the nvm script to your user account. In order to use it, first source the .bashrc file
     source ~/.bashrc
    
# 8. nvm what versions of Node are available:
     nvm ls-remote

# 9. It’s a very long list, but you can install a version of Node by inputting any of the released versions listed
     nvm install v16.13.1

# 10. Sometimes nvm will switch to use the most recently installed version. But you can tell nvm to use the version you just  downloaded
     nvm use v16.13.1
     node -v

# 11. If you have multiple Node versions installed, you following command
     nvm ls

# 10. You can also default to one of the versions
     nvm alias default 16.13.1

# 11. You can also have npm install packages to the Node.js project’s ./node_modules directory.
     npm install express

# 12. If you’d like to install the module globally, making it available to other projects using the same version of Node.js
     npm install -g express

# 13. Install the package , Installing the module globally will let you run commands from the command line, but you’ll have to   link the package into your local sphere to require it from within a program:
     ~/.nvm/versions/node/16.13.1/lib/node_modules/express
     npm link express
   -->