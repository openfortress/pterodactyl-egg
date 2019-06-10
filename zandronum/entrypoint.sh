#!/bin/bash
cd /home/container

if [[ ! -z ${WADS} ]]; then
    MODIFIED_STARTUP="$STARTUP -file $WADS"
else
    MODIFIED_STARTUP="$STARTUP"
fi

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${MODIFIED_STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}