#!/bin/bash

sudo yum -y update && \
sudo yum -y epel-repo && \
sudo yum -y update && \
sudo yum -y install ansible && \
sudo yum -y install git && \
echo "Finish" 
