FROM php:8.3-fpm

# Set working directory
WORKDIR /var/www/symfony

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libicu-dev \
    libzip-dev \
    libxml2-dev \
    zip \
    curl \
    && docker-php-ext-install \
    intl \
    opcache \
    zip \
    && docker-php-ext-enable opcache

# Install Composer
COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

# Install FrankenPHP
RUN curl https://frankenphp.dev/install.sh | sh \
    && mv frankenphp /usr/local/bin/frankenphp

# Copy app to container
COPY . /var/www/symfony

# Ensure correct permissions
RUN chown -R www-data:www-data /var/www/symfony

# Expose default FrankenPHP port
EXPOSE 8080

# Command to start FrankenPHP
CMD ["frankenphp", "php-server", "-r", "public/"]

