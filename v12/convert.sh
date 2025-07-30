#!/bin/bash

. /usr/dlc/bin/proenv
cd /tmp
yes | proutil $1 -C conv1112
probkup $1 $1_12.bck