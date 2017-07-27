#!/bin/bash

# NOTE: use this script only with "source" command

THIS_DIR=`dirname -- $0`
ENV_FILE=${THIS_DIR}/environment.env
echo "Will load env from file: ${THIS_DIR}/../environment.env ..."
export $(cat ${ENV_FILE} | xargs)
echo "Now check environment with \"env\" command"
