#!/bin/bash
cd /home/container

echo $WADS

if [[ ! -z ${WADS} ]]; then
    MODIFIED_STARTUP="$STARTUP -file $WADS"
else
    MODIFIED_STARTUP="$STARTUP"
fi

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${MODIFIED_STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`

mkdir -p /home/container/.config/zandronum

echo "$(pwd): $MODIFIED_STARTUP"
# Run the Server
bash
${MODIFIED_STARTUP}
