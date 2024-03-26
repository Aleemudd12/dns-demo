# Use a base image with CentOS
FROM centos:latest

# Install necessary packages
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy the script into the container
COPY my_script.sh /my_script.sh

# Make the script executable
RUN chmod +x /my_script.sh

# Expose port 80
EXPOSE 80

# Run the script when the container starts
CMD ["/my_script.sh"]
