#!/bin/bash

APP="/home/lucas/projects/academind-docker/multi-01-starting-setup/mongo"

docker run -it --rm       \
  --name mongodb          \
  --network multi-app     \
  -v "$APP/data/db:/data/db"    \
  --env-file "$APP/.env"  \
  mongo:latest
