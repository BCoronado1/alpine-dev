#!/bin/bash
source .env
docker build --build-arg USR=${USR} --build-arg PASSWD=${PASSWD} -f Dockerfile_base -t dev-base:1.0 .
docker build -f Dockerfile_c -t dev-c:1.0 .