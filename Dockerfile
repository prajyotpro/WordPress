FROM php:7.2.9-apache 

# Creating new working directory and assigne permission for web app
RUN mkdir -p /var/www/html/
COPY . /var/www/html/

# Folder permission
RUN chmod 755 /var/www/html/

# Install extensions
RUN docker-php-ext-install mysqli

# Install some base extensions
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install