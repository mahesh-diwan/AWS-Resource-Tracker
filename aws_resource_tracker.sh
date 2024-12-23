#!/bin/bash

#############
# Author : Mahesh Diwan
# Date : 23/12/2024
# Version : v1
#
# This script will report the aws resource usage
#############

# AWS EC2
# AWS S3
# AWS lambda
# AWS IAM Users

# list aws s3 buckets
echo "Print list s3 buckets"
aws s3 ls > resource_tracker

# list EC2 Instances
echo "Print ec2 instances"
aws ec2 describe-instances |jq '.Resrvations[].Instances[].InstanceId'

# list lambda
echo "Print lambda functions"
aws lambda list-functions

# list IAM Users
echo "Print iam users"
aws iam list-users
