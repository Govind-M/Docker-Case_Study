# Use Ubuntu as the base image
FROM ubuntu:latest

# Update the package list and install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy application code into the container
COPY . /var/www/html/

# Expose the default Apache port
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

