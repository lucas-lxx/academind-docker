#!/bin/bash

APP="/home/lucas/projects/academind-docker/multi-01-starting-setup/backend/"

docker run --rm -it       \
  -p 3003:80              \
  --name backend          \
  --network multi-app     \
  -v "$APP/:/app"         \
  -v /app/node_modules    \
  --env-file "$APP/.env"  \
  backend:latest
