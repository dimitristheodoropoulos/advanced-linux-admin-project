#Automates the configuration of a firewall using iptables or ufw.
#!/bin/bash
# Set up firewall rules using ufw
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable
sudo ufw status
