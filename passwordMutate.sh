#!/bin/bash
#Super quick and easy. You should probably use awk instead
echo "Hi! Please enter a file to mutate."
read filepath
for i in $(cat $filepath)
do 
	echo $i
 	echo ${i}1234
 	echo ${i}2020;
	echo ${i} | tr [:lower:] [:upper:]
done
