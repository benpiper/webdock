#!/bin/sh
if [ $# -eq 0 ] || [ $UID != 0 ];
then
echo "Usage: sudo ./clear-error.sh [container]"
echo "Running containers: "
docker ps | awk '{print $11}'
exit 1
fi
id=`docker inspect -f '{{.Id}}' $1`
FILE=/var/lib/docker/aufs/mnt/$id/app/index.php
if [ -f $FILE ]; then
cp -f /var/lib/boot2docker/app/index-default.php $FILE
fi
