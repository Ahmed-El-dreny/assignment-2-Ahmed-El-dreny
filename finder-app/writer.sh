#!/bin/bash

# assignment.1 writer.sh creation
# Author: Ahmed Ayman El-dreny
# GitHub username: Ahmed-El-dreny

writefile=$1
writestr=$2
filename=$( dirname $writefile )

if [ $# -eq 0 ] || [ -z $writefile ] || [ -z $writestr ]
then
	echo "Error in the inputs"
	exit 1
	
elif [ ! -e "$writefile" ]
then
	mkdir -m 775 -v -p $filename
	touch $writefile && chmod 775 $writefile
fi

if [ -e "$writefile" ]
then
	echo $writestr > $writefile
	echo File created and its content is: && cat $writefile
	exit 0
else
	echo Failed to create the file 
	exit 1
fi
