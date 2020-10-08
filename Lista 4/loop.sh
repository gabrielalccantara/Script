#!/bin/bash
while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} && echo “$(date +%H:%M) ${a}: criado!”
	sleep 1
b=$(( ${RANDOM} % 10 ))
	rm ${b} && echo “$(date +%H:%M) ${b}: removido!”
done
