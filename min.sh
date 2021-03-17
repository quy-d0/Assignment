#!/bin/bash
min=$(date +%M)
if [ $min -ge 0 ] && [ $min -lt 20 ]; then 
	echo " "
elif [ $min -ge 20 ] && [ $min -lt 40 ]; then
	echo -e "\a"	
else
	echo -e "\a"
	sleep 1
	echo -e "\a"
fi
