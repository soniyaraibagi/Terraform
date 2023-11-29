# Running Rails app on Vagrant

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

# 5. Clone the rails app repo to extisting repo:
git clone https://github.com/code-mancers/sr-training.git

# 6. Install the Ruby 3.2.2: 
[Ruby](https://gitlab.com/codemancers/sandbox/soniyarayabagi/devops/-/tree/main/vagrant-ruby-rbenv?ref_type=heads)

# 7. Install the Nodejs-apt:
[Nodejs](https://gitlab.com/codemancers/sandbox/soniyarayabagi/devops/-/tree/main/vagrant-nodejs-apt?ref_type=heads)

# 8. Install the Postgresql :
[Postresql](https://gitlab.com/codemancers/sandbox/soniyarayabagi/devops/-/tree/main/vagrant-postgres?ref_type=heads)

# 9. config.vm.synced_folder set to false in Vagrantfile:
config.vm.synced_folder ".", "/vagrant", disabled: false

# 9. configure port forwarding:
config.vm.network "forwarded_port", guest: 3000, host: 3000

# 11. Reload vagrant:
vagrant reload

# 12. Run the server:
bundle intsall
bundle exec rails s -b 0.0.0.0 -p 3000
```