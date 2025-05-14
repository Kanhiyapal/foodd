FROM php:8.2-apache

# Enable mod_rewrite (optional)
RUN a2enmod rewrite

# Suppress ServerName warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Copy your project
COPY . /var/www/html/

WORKDIR /var/www/html/

# Optional: Install Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

EXPOSE 80
