# Ruby installation on Vagrant 

Setup for a Vagrant environment with Installation of Ruby version 3.2.2.

## Setup Instructions
```bash

# 1. Initialize Vagrant Run the following command to create a Vagrantfile:
vagrant init hashicorp/bionic64

# 2. Start Vagrant on Virtual Machine:
vagrant up

# 3. Access Vagrant VM Opens the ubuntu welcome page:
vagrant vssh
   
# 4. Update the package index on the Vagrant VM:
sudo apt-get update

# 5. Install the dependencies required to install Ruby:
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

# 6. Clone the rbenv repository from GitLab into the directory ~/.rbenv:
git clone  https://github.com/rbenv/rbenv.git ~/.rbenv

# 7. ~/.bashrc file
source ~/.bashrc

# 8. Verify that rbenv is set up properly by using the type command, which will display more information about the rbenv command:
type rbenv

# 9. long list of ruby versions:
rbenv install -l

# 10. Install the version you want:
rbenv install 3.2.2

# 11. Set it as our version of Ruby with the global sub-command:
rbenv global 3.2.2

# 12. Check the ruby version:
ruby -v
3.2.2
```