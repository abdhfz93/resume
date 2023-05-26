# Use the official CentOS 7 image as the base image
FROM centos:7

# Install Apache web server
RUN yum -y update && yum -y install httpd

# Copy the index.html file to the Apache document root
COPY index.html /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache web server when the container launches
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
