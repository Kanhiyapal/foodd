# Use official PHP image
FROM php:8.2-apache

# Enable Apache mod_rewrite (useful for Laravel, etc.)
RUN a2enmod rewrite

# Copy all files to Apache's root directory
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Optional: Install Composer if you use it
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Expose port 80
EXPOSE 80
