date
docker exec openedge-v11 /usr/bin/restore.sh $1
docker exec openedge-v12 /usr/bin/convert.sh $1
date
