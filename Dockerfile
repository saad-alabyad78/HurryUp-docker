# Use the official PHP image with PHP 8.1
FROM richarvey/nginx-php-fpm:1.10.4

# Copy your Laravel project into the container
COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Set environment variables
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr


# Start PHP-FPM
CMD ["/start.sh"]
