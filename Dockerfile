FROM php:7.2.9-apache 

# Creating new working directory and assign permission for web app
RUN mkdir -p /var/www/html/
COPY . /var/www/html/
RUN chmod 755 /var/www/html/
RUN chown -R www-data:www-data /var/www

# Install extensions
RUN docker-php-ext-install mysqli