#!/bin/bash
cd /home/container

if [[ ! -z ${WADS} ]]; then
    MODIFIED_STARTUP="$STARTUP -file $WADS"
else
    MODIFIED_STARTUP="$STARTUP"
fi

echo ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}