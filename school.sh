#!/bin/bash
total_values=$(cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d',' -f7)
sum=$(echo "$total_values" | awk '{ sum += $1 } END { print sum }')
count=$(echo "$total_values" | wc -l)
average=$(echo "scale=2; $sum / $count" | bc)
echo "Average TotalAssessedValue: $average"
