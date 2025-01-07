# Use the official PHP image
FROM php:8.1-apache

# Copy project files to the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for the web server
EXPOSE 80

# Install required PHP extensions (modify as needed)
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite
