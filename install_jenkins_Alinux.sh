#!/bin/bash
# Update all installed packages to the latest version
sudo yum update -y

# Add the Jenkins repository to the system
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the official Jenkins GPG key to verify package authenticity
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Upgrade all installed packages (similar to `yum update`, but with more capabilities)
sudo yum upgrade -y

# Install Java 17 (Amazon Corretto), required for running Jenkins
sudo dnf install java-17-amazon-corretto -y

# Install Jenkins from the added repository
sudo yum install jenkins -y

# Enable Jenkins service to start automatically on system boot
sudo systemctl enable jenkins
sudo systemctl restart jenkins

# Check the status of Jenkins to ensure it's running
sudo systemctl status jenkins || true

# Print a success message
echo "Jenkins installation and setup completed successfully. Access it at http://<your-servers-public-ip>:8080"

