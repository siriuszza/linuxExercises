#!/bin/bash

if [[ ($# -lt 1) || ($# -gt 2) ]]; then
	echo "usage: ./mean.sh <column> [file.csv]" 1>&2
	exit 0
fi

column=$1

if [[ $# -eq 1 ]]; then
	file=/dev/stdin
else
	file=$2
fi

cat $file |
	tail -n +2 | 
	cut -d ',' -f $column | {
	sum=0;
	line_count=0;
	while read sample; do
		((sum+=sample));
		((line_count++));
	done;
	echo $(bc <<< "scale=4; $sum / $line_count");
}
