#!/bin/bash
# setup.sh
#
# Define colors for the header
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RESET='\033[0m'

# Start time for script duration
start=`date +%s`
now=$(date +"%Y-%m-%d %R")

# Display header with colors
echo ""
echo -e "${YELLOW}     This runs script to installs php and npm dependencies,         ${RESET}"
echo -e "${YELLOW}     seeding DB & configurations         ${RESET}"
echo ""
echo ""
echo ""

#
# Setup commands
cd /application

echo -e "${BLUE}======================  Laravel Configuration Setup========================${RESET}"
echo ""

# Install composer libs
cp .env.example .env
composer install
php artisan key:generate

echo -e "${BLUE}======================  Build Frontend  ========================${RESET}"
echo ""

# Compile JS and CSS using LaravelMix (webpack.mix.js)
npm install
#npm run dev
npm run build

echo -e "${BLUE}======================  DB Migration Setup========================${RESET}"
echo ""

# artisan version
php artisan --version

#Setup DB
php artisan migrate:fresh
php artisan db:seed



echo -e "${BLUE}======================  Configuration Cleanup   ========================${RESET}"
echo ""

# Refresh composer
composer dump-autoload

# Laravel application level cache
php artisan config:clear
php artisan config:cache

php artisan route:clear
php artisan route:cache


echo -e "${GREEN}====================== Completed Successfully   ========================${RESET}"

#
end=`date +%s`
runtime=$((end-start))
echo "Done ($runtime seconds)"
