#!/bin/bash

if [ ! $# -eq 2 ]
then
    exit 1
fi

WRITEFILE=$1
WRITESTR=$2

touch $WRITEFILE
echo $WRITESTR > $WRITEFILE 