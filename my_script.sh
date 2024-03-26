#!/bin/bash

# Update package cache and install httpd
yum update -y
yum install -y httpd

# Start and enable httpd service
systemctl start httpd
systemctl enable httpd

# Create index.html with hostname
echo "<h1> Hello world from $(hostname -f)</h1>" > /var/www/html/index.html

# Keep container running
exec "$@"
