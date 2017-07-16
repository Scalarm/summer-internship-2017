#!/bin/bash
## NOTE: invoke this script only from repo root!
set -e
export $(cat environment.env | xargs)
docker-compose up -d
