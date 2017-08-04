#!/bin/bash
docker rm -f $(docker ps -aq); docker volume rm `docker volume ls -q`
set -e
THIS_DIR=`dirname "$0"`
source ${THIS_DIR}/load_env.sh
docker-compose up -d
