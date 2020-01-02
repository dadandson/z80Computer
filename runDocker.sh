#/bin/bash
set -e

ESPCONTAINERVERSION=`cat docker/espcontainerver`

docker run --name z80 --rm -it --privileged -e USER_ID=$UID -e GROUP_ID=`id -g` -v /dev/bus/usb:/dev/bus/usb -v $PWD:/home/z80/project z80:$ESPCONTAINERVERSION 
