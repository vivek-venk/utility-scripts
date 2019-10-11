#!/bin/sh

###################################################################
# This is a comment in the file.
# This script is an attempt to write a basic monitoring for a hostname.
# Author: 		Vivek Venkatachalam
# Date of Creation: 	12th August 2019
# Comments to add more montoring parameters are welcome.
###################################################################

echo "*****************************************"
echo "Host Name: " `hostname`
echo "*****************************************"
echo "*****************************************"
echo "Date:Time: " `date`
echo "*****************************************"
echo "Disk Space Usage"
echo "*****************************************"
df -h
echo "*****************************************"
echo "Disk Utilization - Top 10 Records"
echo "*****************************************"
du -h | sort -n -r | head -10
echo "*****************************************"
