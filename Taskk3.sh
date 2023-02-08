#!/bin/bash

Value=$1
User=$(id -u)
Size=$(du -hs $Value)
echo "$size"
echo "Given directory is $Value" 
echo "$#"


if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    exit 0

#when a blank argument is supplied condition 1


#elif [[ -z "$1" ]]; then
 #   echo "Input value is empty"


elif (( $# > 1)); then
	echo "Exceeded more than one Input value"
	exit 0
#When more then one argument is supplied, condition 2 


elif (( $# == 1)); then

	if [[ -d "$Value" ]] ; then
		echo "Directory exists"
	else 
		echo "Directory does not exit"

	fi
#Used to check whether the given directory exists or not	
else 
	echo "Error"

fi

if [[ -d $Value ]]; then
 echo "User in parent directory"
 zip -r task01.zip $Value

else 
echo "User not in parent directory $pwd"
fi

if [ $User -ne 0 ]; then
	echo "Can't write the compressed file to the current directory"

else
	echo "Go ahead"

fi

if [[ $Size > 536870912 ]]; then
	echo -n "Warning: the directory is 512 MB. Proceed? [y/n] (ans)"
	read b
	if [[ b= y ]] 

else
	echo "Done"

fi	
