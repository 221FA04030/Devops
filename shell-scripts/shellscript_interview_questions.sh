#!/bin/bash

######################
#author : chiru

#date : 02/07/2026

#devops shell_script interview questions


#verison v1
######################



# 1.list some of the commonly used shell commands ? 
# ls,copy,mkdir,touch,vim,grep etc


# 2.write a simple shell script to list all process

#echo "print all the process"

#ps -ef

#echo "print only process id"

#ps -ef | awk -F" " '{print $2}'


# 3.write a script to print only errrors from a remote log 
# curl google.com | grep error

# write  a shell script to print numbers divided by 3&5 and not 15
# print even numbers
# print odd numbers
# print numbers divisible by 3
# print prime numbers


#4.write a script to print number of "s" in mississippi

#x = mississippi

#echo "mississippi" | grep -o "s" | wc -l

#5.how do you debug in shell script ?
#set -x #debug
#set -e #stops the program if there is any error middle of the execution
#set -o #pipefail


#what is crontab in linux ? can you provide an example of usage  ?

#crontab --> linux admin
#report --> nodehealth example


#crontab is nothing like automation it sets an alarm to generate a report like node health at 6pm


#how to open a read-only file ?
#vim -r even_numbers.sh

#whats the diffrence between soft link and hard link ?
# reuse (copy) --->hardlink
# secret file --> should not be deleted.so, i we use the hard link it saves the copy of sensitve files safely inn the memory just it creates a copy

#python 3 -->python ---->softlink

#if u delete python in memory then automatically the python3 alsoo deleted

#what the diffrenece between break,continue statements?

#break -breaking the execution
#continue - continuing the execution  (skip)

#skip this and continue the next example 3,5 but not 15 continue 

#1,55555,100000
# if u find 55555 break the execution


#what are the disadvantages of shell scripting ?

#what are the diffrent types of loops and when to use ?
#for,while,until,select

#for - when you know how times to repeat 
#ex : print numbers 1 to 100

#while - when you want to repeat as long as condition is true 	
#ex : read user input until type exit

#until  - when you want to repeat until condition becomes true
#ex : keep asking password until its correct

#select - to create simple menu for the user
#ex : menu-driven programs choose 1,2,3

#is bash is dynamic (or) statically typed and why ?
#python,shell --->dynamic 
#golang ---->satitically typed

#x=5,x="string" -----> direclty u can assign the values 

#var x string it statically typed

#explain about a network troubleshooting utility ?
#there are two commands 1.traceroute 2.tracepath
#ex : traceroute google.com


#how will you sort lsit of names in a file ?
#sort


#how will you manage huge file logs of a system that generate everyday ?
#linux admin

#application - logs(realtime) 100000000 logs genrate perday
#solution - logrotate(command) 
#Logrotate ------> for every 24 hrs make zip (gzip,zip) if 30 days  completed delete them.
