#!/bin/bash



awk '!/nelson/''{print $1" "$3}' < dow.txt
num=$( awk 'NR==1''{print $3}' < dow.txt)
num2=$( awk 'NR==3''{print $3}' < dow.txt)

echo "nelson $(( $num + $num2))"
