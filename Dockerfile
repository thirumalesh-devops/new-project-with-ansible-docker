# Use the RHEL base image
FROM httpd:latest

# Update the package manager and install Apache
RUN yum install -y httpd && \
    yum clean all

# Expose port 80
EXPOSE 8081

# Copy index file
COPY index.html /var/www/html/index.html
COPY index.css /var/www/html/index.css
COPY index.js /var/www/html/index.js

# Start Apache when the container launches
CMD ["httpd", "-D", "FOREGROUND"]

