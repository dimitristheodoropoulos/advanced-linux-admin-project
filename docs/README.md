# Advanced Linux Administration Project

This project contains a collection of scripts to automate Linux server administration tasks such as:

- System monitoring
- Backup automation
- Firewall setup
- Service installation

## Scripts

### backup.sh
Automates the backup of critical directories and uploads it to a remote server.

### monitor.sh
Monitors system performance and sends alerts if CPU usage exceeds a specified threshold.

### firewall.sh
Sets up a basic firewall configuration using `ufw`.

### install_services.sh
Automates the installation of common Linux services like Apache and MySQL.

## How to Use

1. Clone the repository:
git clone https://github.com/username/advanced-linux-admin-project.git


2. Run any script:
bash scripts/backup.sh bash scripts/monitor.sh


3. Set up cron jobs for automated tasks (refer to `config/cron_jobs`).




##Build the Docker Image.Once your Dockerfile is set up, you can build the Docker image by running the following commands:
Navigate to the project directory:

cd /path/to/your/project

##Build the Docker image:
docker build -t linux-admin-project .

##-t linux-admin-project tags the image with the name linux-admin-project.

##Run the Docker container:
docker run -d --name linux-admin-container linux-admin-project

-d runs the container in detached mode.
--name linux-admin-container gives the container a name.

##Check the logs or access the container:
If you want to see what's happening inside the container:
docker logs linux-admin-container


If you want to access the container's shell:
docker exec -it linux-admin-container bash


