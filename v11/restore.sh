#!/bin/bash

. /usr/dlc/bin/proenv
cd /tmp
prorest $1 $1.bck
proutil $1 -C truncate
