#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "usage: ./rm_n.sh <dir> <n>" 1>&2
	exit 0
fi

dir=$1
n=$2
files_to_rm=$(find $dir -type f -size +${n}c)
rm $files_to_rm
