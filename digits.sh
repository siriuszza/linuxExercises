#!/bin/bash
summ=0
for i in {1000..2000};do
    num_str="$i"
    if [[ "$num_str" =~ ^[01]+$ ]];then
	summ=$(($summ+$i))
    fi
done
echo $summ
