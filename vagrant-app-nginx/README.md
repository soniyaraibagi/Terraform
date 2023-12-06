# Setting up Nginx in Ubuntu 18 for a Ruby on Rails app using Puma.

## Setup Instructions:

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

# 9. Install and Set up Puma as Systemd service in for Rails application :
1. /etc/systemd/system/puma.service
2. sudo systemctl daemon-reload
3. sudo systemctl enable puma
4. sudo service puma start
5. sudo service puma status

# 10. Install the Nginx and Setting up Nginx in for Rails app getting run on localhost:80 using Puma.:
### Steps to install :
[Nginx](https://gitlab.com/codemancers/sandbox/soniyarayabagi/devops/-/tree/main/vagrant-nginx?ref_type=heads) 

### Steps to setup :
1. /etc/nginx/sites-available/your_app_name
   
   server {
    listen 80;
    server_name 0.0.0.0.3000;

    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    error_page 500 502 503 504 /500.html;
    location = /500.html {
        root /vagrant/sr-training/movies/flix/public;
    }
}

2. sudo ln -s /etc/nginx/sites-available/my_app.conf  /etc/nginx/sites-enabled
3. sudo service nginx start
4. sudo service nginx reload
5. sudo service nginx status






