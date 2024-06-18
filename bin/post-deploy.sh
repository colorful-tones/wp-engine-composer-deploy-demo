#!/bin/sh

echo "Starting post deploy script..."
echo "Switch directory to wp-content/"
cd wp-content
echo "Installing Composer dependencies..."
composer install --optimize-autoloader --no-dev --no-progress