#!/bin/bash

# assignment.1 finder.sh creation
# Author: Ahmed Ayman El-dreny
# GitHub username: Ahmed-El-dreny

filesdir=$1
searchstr=$2

# X is the number of files in the directory and all subdirectories ---> find $filesdir -type -f | wc -l
# Y is the number of matching lines found in respective files ---> grep -rs $filesdir -e $searchstr | wc -l

if [ $# -eq 0 ] || [ -z $filesdir ] || [ -z $searchstr ] || [ ! -d "$filesdir" ]
then
	echo "Error in the inputs"
	exit 1
else
	X=$( find $filesdir -type -f | wc -l )
	Y=$( grep -rs $filesdir -e $searchstr | wc -l )
	echo "The number of files are $X"
	echo "The number of maching lines are $Y"
	exit 0
fi
