# Vagrant Nginx Setup

```bash
# Setup Instructions

# 1. Initialize Vagrant Run the following command to create a Vagrantfile:
     vagrant init hashicorp/bionic64 

# 2. bash.sh commands 
    # Update the package index
    sudo apt-get update

    # Install Nginx
    sudo apt-get install -y nginx

    # Start Nginx
    sudo service nginx start
    
# 3. Start Vagrant on Virtual Machine
     vagrant up 

# 4. Access Vagrant VM Opens the ubuntu welcome page
     vagrant vssh
   
# 5. Add new forwarding port:8080 run following command to get the ubuntu welcome page
     curl localhost:80
   
# 6. Go to browser and check by giving the port : 8080 you can see Welcome nginx page
     vagrant reload 

# 7. Destroy vagrant 
     vagrant destroy
```






