<!-- # Postgresql Setup on Vagrant 

<!-- This repository contains the configuration files and setup for a Vagrant environment with Postgresql. -->
```bash
# Setup Instructions

# 1. Clone this repository.
# 2. Initialize Vagrant Run the following command to create a Vagrantfile:
     vagrant init hashicorp/bionic64 
    
# 3. Start Vagrant on Virtual Machine:
     vagrant up 

# 4. Access Vagrant VM Opens the ubuntu welcome page:
     vagrant vssh
   
# 5. Update the package index on the Vagrant VM:
     sudo apt-get update

# 6. Install Postgresql:
     sudo apt-get install postgresql postgresql-contrib libpq-dev

# 7. Install Postgresql Client:
     sudo apt-get install postgresql-client

# 8. Psql login into database:
     sudo -u postgres psql

# 9. List databases:
      \l

# 10. List Users:
     \du

# 11. Create database:
     CREATE DATABASE movie_development;
     CREATE DATABASE movie_test;

# 12. Create user with password:
     CREATE USER movie_user WITH PASSWORD 'your_password';

# 13. Provide Permissions:
     GRANT ALL PRIVILEGES ON DATABASE movie_development TO movie_user;
     GRANT ALL PRIVILEGES ON DATABASE movie_test TO movie_user;

# 14. To check the provided permissions:
      \dp movie_development;
      \dp movie_test;

# 15. Exit PSQL:
      \q
   -->