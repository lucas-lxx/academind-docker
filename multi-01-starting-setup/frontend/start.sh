#!/bin/bash

APP="/home/lucas/projects/academind-docker/multi-01-starting-setup/frontend/"

docker run --rm -it     \
  -p 3000:3000          \
  --name frontend       \
  --network multi-app   \
  -v "$APP:/app"        \
  -v /app/node_modules  \
  frontend:latest
