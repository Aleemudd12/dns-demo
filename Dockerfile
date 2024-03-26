# Use a base image with CentOS
FROM centos:latest

# Install necessary packages
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy the script into the container
COPY setup.sh /setup.sh

# Make the script executable
RUN chmod +x /setup.sh

# Expose port 80
EXPOSE 80

# Run the script when the container starts
CMD ["/setup.sh"]
