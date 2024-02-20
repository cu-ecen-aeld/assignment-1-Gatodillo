#!/bin/bash

if [ $# != 2 ]
then
    echo "Wrong number of arguments"
    exit 1
fi

if [ ! -d $1 ]
then
    echo $1 " is not an valid path"
    exit 1
fi

pathToDir=$1
textString=$2

cd $pathToDir
numberOfFiles=$( find . -type f | wc -l )
numberOfResults=$( find . -type f -print0 | xargs -0 grep -l $textString | wc -l)

echo "The number of files are "  $numberOfFiles " and the number of matching lines are"   $numberOfResults