#!/bin/sh
exec st -c floatterm -g 80x45 -e sh -c 'ncal -C -y ; echo ; tput bold ; while :; do printf "\r%s " "$(date)" ; sleep 0.5 ; done'
