#!/bin/bash
## NOTE: invoke this script only from repo root!
set -e
THIS_DIR=`dirname "$0"`
source ${THIS_DIR}/load_env.sh
docker-compose up -d
