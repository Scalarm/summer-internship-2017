#!/bin/bash

# NOTE: original script: https://github.com/Scalarm/scalarm/blob/master/util_scripts/check_statuses.sh

# $1 - name
# $2 - address
function check {
#	echo -n "$1 -> "
	STATUS=`curl -skw "%{http_code}" http://$2/status.json -o /dev/null`
	if [ $STATUS == "200" ]; then
		echo -e "\033[1;32m$1 -> $STATUS\033[0m"
	else
		echo -e "\033[1;31m$1 -> $STATUS\033[0m"
	fi
}

check "experiment manager" "localhost:${EXPERIMENT_MANAGER_PORT}"
check "experiment supervisor" "localhost:${EXPERIMENT_SUPERVISOR_PORT}"
check "data explorer" "localhost:${DATA_EXPLORER_PORT}"
