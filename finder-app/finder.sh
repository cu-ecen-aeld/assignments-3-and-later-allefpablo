#!/bin/sh


if [ "$#" -ne 2 ]; then
	echo "Expected 2 arguments"
	exit 1
fi

filesdir=$1
searchstr=$2

if [ -d "${filesdir}" ]; then
	numberoffiles=`find ${filesdir} -type f | wc -l`
	numberofmatches=`grep -cR ${searchstr} ${filesdir} | wc -l`
	echo "The number of files are ${numberoffiles} and the number of matching lines are ${numberofmatches}"
else
	echo "${filesdir} is not a valid directory"
	return 1
fi

