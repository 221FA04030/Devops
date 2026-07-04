#!/bin/bash

###################################
#author : chiru

#date : 02/07/2026

#printing prime numbers

#version : v1
####################################


for i in {1..100}
do
	prime=1
	
	for (( j=2;j<i;j++ ))
	do
		if [ $((i%j)) -eq 0 ]
		then
			prime=0 
			break
		fi
	done 


	if [ $prime -eq 1 ]
	then
		echo $i
	fi
done

