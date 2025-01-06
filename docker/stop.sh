#!/bin/bash
# Define colors for the header
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'
RED='\033[0;31m'


# Start time for script duration
start=`date +%s`
now=$(date +"%Y-%m-%d %R")

# Display header with colors
echo -e "${BLUE}==============================================${RESET}"
echo -e "${YELLOW}     Solutech Booking Challenge Setup        ${RESET}"
echo -e "${BLUE}==============================================${RESET}"
echo -e "Stopping Docker Containers, confirm running service with ${RED}'docker ps'  \n ${RESET}$now"
echo ""


docker-compose down
