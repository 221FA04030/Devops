#!/bin/bash


######################################

#author : chiru

#date : 30-06-2026

#this script ouputs the node health 

#version : v1

######################################


set -x #debug 

set -e #if there any arror stop over there

set -o # pipefail


echo " disc size "

df -h


echo "memory usage"

free

echo "monitoring system performance"
top



