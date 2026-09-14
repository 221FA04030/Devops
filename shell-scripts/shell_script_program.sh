#!/bin/bash

########################################

#author : chiru

#date : 02/07/2026

#this is script is about print numbers divisble by 3 & 5 and not with 15

#version : v1

########################################


for i in {1..100}
do
	if [ $(( i % 3 )) -eq 0 ] || [ $(( i % 5 )) -eq 0 ] 
	then
		if [ $((i % 15 )) -ne 0 ]
		then 
			echo $i
		fi
	fi
done
