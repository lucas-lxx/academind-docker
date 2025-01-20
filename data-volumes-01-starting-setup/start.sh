#!/bin/bash

APP="/home/lucas/projects/academind-docker/data-volumes-01-starting-setup"

docker run --rm -it \
	-p 8080:80 \
	--env-file "$APP/.env"\
	-v feedback:/app/feedback/ \
	-v /app/temp/ \
	-v "$APP:/app" \
	-v /app/node_modules/ \
	--name node \
	node_app:volumes
