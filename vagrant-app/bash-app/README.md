# Running Rails app on Vagrant using bash provisioner 

## Setup Instructions
```bash

# 1.Initialize Vagrant Run the following command to create a Vagrantfile:
vagrant init hashicorp/bionic64

# 2.Start Vagrant on Virtual Machine:
vagrant up

# 3.bash.sh commands 
#!/bin/bash

# Update the package index
sudo apt-get update

#NGINX
# Install Nginx
sudo apt-get install -y nginx

# Start Nginx
sudo service nginx start

# NODEJS-NVM
# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Source the .bashrc file to use NVM
source ~/.bashrc

# RUBY-RBENV
# Install the dependencies required to install Ruby:
sudo apt-get install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

# Clone the rbenv repository from GitLab into the directory ~/.rbenv:
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# Add rbenv to the bash so that it loads every time you open a Terminal:
echo 'eval "$(~/.rbenv/bin/rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

# Ensure that the necessary directories are in the PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# POSTGRESQL
# Install PostgreSQL and its development libraries:
sudo apt-get install -y postgresql postgresql-contrib libpq-dev

# Start and enable the PostgreSQL service:
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Create database:
sudo -u postgres psql -c "CREATE DATABASE movie_development;"
sudo -u postgres psql -c "CREATE DATABASE movie_test;"

# Create user with password:
sudo -u postgres psql -c "CREATE USER movie_user WITH PASSWORD 'your_password';"

# Grant privileges on databases to the user:
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE movie_development TO movie_user;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE movie_test TO movie_user;"

# Source directory path
source_dir="/Users/soniyarayabagi/codemancers/devops/vagrant-app/bash-app/sr-training-main"

# Use the $source_dir variable wherever needed
echo "Source directory: $source_dir"

# 4.Navigate to your Rails application directory:
cd /path/to/your/rails/app

# 5.Run Rails Server:
bundle exec rails s -b 0.0.0.0 -p 8080


