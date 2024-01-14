#!/bin/bash

#Update the package index on the Vagrant VM:
sudo apt-get update

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

