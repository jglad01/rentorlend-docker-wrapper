# Use the official PHP image as a base
FROM php:8.1.5-apache

# Install necessary packages and PHP extensions
RUN apt-get update && apt-get install -y \
    libbz2-dev \
    libcurl4-openssl-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libpng-dev \
    libwebp-dev \
    libxpm-dev \
    libgettextpo-dev \
    libonig-dev \
    libexif-dev \
    libxml2-dev \
    libsqlite3-dev \
    libsodium-dev \
    libzip-dev \
    unzip \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install bz2 curl fileinfo gd gettext mbstring exif mysqli pdo_mysql pdo_sqlite sodium zip

# Enable Apache modules if needed
RUN a2enmod rewrite

# Set the Apache document root
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

# Update the default Apache site configuration
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Copy custom php.ini configuration
COPY config/php.ini /usr/local/etc/php/

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /var/www/html
