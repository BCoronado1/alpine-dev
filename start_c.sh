#!/bin/bash
source .env
docker run -d --rm --name dev-c -p ${SSH_PORT}:22 dev-c:1.0