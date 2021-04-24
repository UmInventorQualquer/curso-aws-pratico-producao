#!/usr/bin/env bash

# Start up Docker in Production Mode
echo "Starting up Docker containers..."
sudo docker-compose -f docker-compose.prod.yml up -d
