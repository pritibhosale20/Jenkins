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

# Start the Jenkins service
sudo systemctl start jenkins

# Check the status of Jenkins to ensure it's running
sudo systemctl status jenkins

## Make the Script Executable
# chmod +x install_jenkins_Alinux.sh
# Run the Installation Script
# ./install_jenkins_Alinux.sh
# after installation login to jenkins password get using cmd-
# cat /var/lib/jenkins/secrets/initialAdminPassword

