#!/bin/bash

##################################
#author : chiru

#date : 02/07/2026

#printing odd numbers

#version : v1

#################################


for i in {1..100}
do
	if [ $(( i % 2 )) -ne 0 ]
	then
		echo $i
	fi
done
