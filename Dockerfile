# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Set environment variables to avoid interactive prompts during the build
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install essential packages
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    vim \
    git \
    cron \
    mailutils \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Install any additional software required by your scripts
RUN apt-get update && apt-get install -y \
    apache2 \
    mysql-server \
    ufw \
    && rm -rf /var/lib/apt/lists/*

# Create necessary directories in the container
RUN mkdir -p /scripts /config /logs

# Copy the project files into the container
COPY ./scripts /scripts
COPY ./config /config
COPY ./docs /docs
COPY ./logs /logs

# Make the shell scripts executable
RUN chmod +x /scripts/*.sh

# Set up the cron jobs from the config folder
COPY ./config/cron_jobs /etc/cron.d/cron_jobs
RUN chmod 0644 /etc/cron.d/cron_jobs && \
    crontab /etc/cron.d/cron_jobs

# Expose any ports if necessary (e.g., Apache on port 80)
EXPOSE 80

# Start cron and any other necessary services
CMD service cron start && tail -f /dev/null
