#!/bin/bash

. /usr/dlc/bin/proenv
cd /mnt/data2/restore/db
prorest $1 //mnt/data2/restore/backup/$2
proutil $1 -C truncate
