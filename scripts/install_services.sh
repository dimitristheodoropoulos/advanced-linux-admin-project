#Automates the installation of common services such as Apache, MySQL, or Nginx.
#!/bin/bash
# Install Nginx and MySQL
sudo apt-get update
sudo apt-get install -y nginx mysql-server
sudo systemctl enable nginx
sudo systemctl enable mysql
sudo systemctl start nginx
sudo systemctl start mysql
