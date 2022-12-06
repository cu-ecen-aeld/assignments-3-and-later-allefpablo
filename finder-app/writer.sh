#!/bin/sh

if [ "$#" -ne 2 ]; then
	echo "Expected 2 arguments"
	exit 1
fi

writefile=$1
writestr=$2

file=`basename ${writefile}`
folder=`dirname ${writefile}`

if [ ! -d "${folder}" ]; then
	mkdir ${folder}
fi

echo ${writestr} > ${writefile}
