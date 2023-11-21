<!-- # Vagrant Nginx Setup

<!-- This repository contains the configuration files and setup for a Vagrant environment with Nginx. -->
```bash
# Setup Instructions

# 1. Clone this repository.
# 2. Initialize Vagrant Run the following command to create a Vagrantfile:
     vagrant init hashicorp/bionic64 
    
# 3. Start Vagrant on Virtual Machine
     vagrant up 

# 4. Access Vagrant VM Opens the ubuntu welcome page
     vagrant vssh
   
# 5. Update the package index on the Vagrant VM
     sudo apt-get update

# 6. Installing nginx
     sudo apt install nginx
   
# 7. Active running status of nginx
     sudo service nginx status
   
# 8. Add new forwarding port:8080 run following command to get the ubuntu welcome page
     curl localhost:80
   
# 9. Go to browser and check by giving the port : 8080 you can see Welcome nginx page
     vagrant reload 

# 10. Destroy vagrant 
     vagrant destroy
   -->