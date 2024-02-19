#!/bin/sh
echo "Starting rebuild process..."
sudo docker-compose down
echo "Docker-Compose went down..."
sudo docker rmi -f zatochi13/nginx-site-visit
echo "Deleted Old Image"
sudo docker-compose pull
echo "Pulled new image"
sudo docker-compose up -d
echo "Docker-Compose is up!"
