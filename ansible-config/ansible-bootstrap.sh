#!/bin/bash 
yes '' | ssh-keygen -N '' > /dev/null
sshpass -p ansible ssh-copy-id ansible@192.168.1.10