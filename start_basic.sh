#!/bin/bash
source .env
docker run -d --rm --name dev-basic -p ${SSH_PORT}:22 dev-base:1.0