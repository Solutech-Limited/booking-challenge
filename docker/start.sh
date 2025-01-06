#!/bin/bash
# Define colors for the header
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'


# Start time for script duration
start=`date +%s`
now=$(date +"%Y-%m-%d %R")

# Display header with colors
echo -e "${BLUE}======================================================================${RESET}"
echo -e "${YELLOW}     \t Solutech Booking Challenge Setup        ${RESET}"
echo -e "${BLUE}======================================================================${RESET}"
echo ""
echo -e "${BLUE}booking-app :${RESET} \t \t ${GREEN}     http://localhost:8000/      ${RESET}"
echo -e "${BLUE}booking-mailhog :${RESET} \t ${GREEN}     http://localhost:8001/      ${RESET}"
echo -e "${BLUE}booking-phpmyadmin :${RESET} \t ${GREEN}     http://localhost:8002/      ${RESET}"
echo -e "${BLUE}======================================================================${RESET}"
echo -e "Starting Docker Containers, confirm running service with ${YELLOW}'docker ps'  \n ${RESET}$now"
echo -e "${YELLOW}Tip:${RESET} Error ${RED}'ContainerConfig'${RESET} occurs on updated configuration, restart/rebuild container to fix \n ${RESET}$now"
echo ""



docker-compose up -d
