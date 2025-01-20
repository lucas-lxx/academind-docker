#!/bin/bash

APP="/home/lucas/projects/academind-docker/networks-starting-setup"

docker run --rm -it		\
	-p 3000:3000		\
	-v "$APP:/app:ro"	\
	--name favorites	\
	--network my-net	\
	network:latest		\
