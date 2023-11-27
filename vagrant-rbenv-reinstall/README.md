# Ruby installation on Vagrant 

This repository contains the configuration files and setup for a Vagrant environment with Ruby.

## Setup Instructions

1. Clone this repository.
2. Initialize Vagrant Run the following command to create a Vagrantfile:
     vagrant init hashicorp/bionic64 
    
3. Start Vagrant on Virtual Machine:
     vagrant up 

4. Access Vagrant VM Opens the ubuntu welcome page:
     vagrant vssh
   
5. Update the package index on the Vagrant VM:
     sudo apt-get update

6. Install the dependencies required to install Ruby:
     sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

7. Clone the rbenv repository from GitLab into the directory ~/.rbenv:
     git clone  https://github.com/rbenv/rbenv.git ~/.rbenv

8. ~/.bashrc file
     source ~/.bashrc

9. Verify that rbenv is set up properly by using the type command, which will display more information about the rbenv command:
     type rbenv

10. long list of ruby versions:
     rbenv install -l

11. Install the version you want:
     rbenv install 3.2.2

12. Set it as our version of Ruby with the global sub-command:
     rbenv global 3.2.2

13. Check the ruby version:
     ruby -v
     3.2.2
  