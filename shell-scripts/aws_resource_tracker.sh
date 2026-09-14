#!/bin/bash

###############################

#author : chiru

#date : 02/07/2026

#the script is will report aws resource usage

#version : v1

###############################


#aws s3
#aws ec2
#aws lambda
#aws iam users


set -x

echo "print aws list s3 buckets"
aws s3 ls


echo "print aws list ec2 instances"
aws ec2 describe-instances

echo "print aws lambda funtions"
aws lambda list-functions

echo "print aws iam users list"
aws iam list-users

echo "print only ec2 instance ids"

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#crontab -e
#* * * * * /home/ubuntu/aws_resource_tracker.sh >> /home/ubuntu/aws_resource_tracker.log 2>&1#

#the above line automates the works 
#* → Every minute
#* → Every hour
#* → Every day of the month
#* → Every month
#* → Every day of the week
