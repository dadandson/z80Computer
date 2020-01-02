#!/bin/bash
USRNAME=z80
#DEFAULT_UID=1000
#DEFAULT_GID=1000

#if [ $USER_ID = "" ]; then
#	USER_ID = $DEFAULT_UID
#fi

#if [ $GROUP_ID = "" ]; then
#	GROUP_ID = $DEFAULT_GID
#fi

CURRENT_DIR=$PWD

#echo "Host UID: $USER_ID GID: $GROUP_ID"
#echo "groupmod -o -g $GROUP_ID $USRNAME"
#groupmod -o -g $GROUP_ID $USRNAME
#echo "usermod -o -u $USER_ID -g $GROUP_ID $USRNAME"
#usermod -o -u $USER_ID -g $GROUP_ID $USRNAME
#echo "su - $USRNAME"
su - $USRNAME

