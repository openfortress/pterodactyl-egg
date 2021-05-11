#!/bin/bash

cd /home/container
mkdir -p ~/.config/zandronum
echo $(realpath ~/.config)

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

${MODIFIED_STARTUP}
