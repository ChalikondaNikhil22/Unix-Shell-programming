#!/bin/bash 


#echo "Enter Number: "
#read value

value=$1
echo "$1"
#Used $1 to call the data i.e in this case the value enter after the file name 
lasttwo=${value: -2}
#Using lasttwo to read wheter the given input is either "KB", "MB" or "GB"
Lastone=${value: -1}
#Using lastone to read wheter the given input is "B" or not
#echo "$lasttwo"
#echo "$Lastone"

sleep 1

#By reading the last two or last one charecters which define the units shall help convert the values accordingly
if [[ $lasttwo == "KB" ]]; then
	Inum=${value:0:-2}
	echo "$lasttwo"

	echo "$Inum"
	Bytes="$(($Inum * 1024))"
	#Kilobytes="$(($Inum))"
	Megabytes="$(( $Inum/1024  ))"
	Gigabytes="$(( $Megabytes/1024 ))"
	echo "Bytes = $Bytes B"
	echo "Kilobytes = $Inum KB"
	echo "Megabytes = $Megabytes MB"
	echo "Gigabytes = $Gigabytes GB"


elif [[ $lasttwo == "MB" ]]; then
	Inum=${value:0:-2}
	echo "$lasttwo"

	Bytes="$(($Inum *1024 * 1024))"
	Kilobytes="$(($Inum * 1024))"
	#Megabytes="$(($Inum))"
	Gigabytes="$(($Inum/1024))"
	echo "Bytes = $Bytes B"
	echo "Kilobytes = $Kilobytes KB"
	echo "Megabytes = $Inum MB"
	echo "Gigabytes = $Gigabytes GB"

elif [[   $lasttwo == "GB" ]];then
	Inum=${value:0:-2}
	echo "$lasttwo"

	Bytes="$(($Inum *1024 *1024 *1024))"
	Kilobytes="$((Inum / 1024 / 1024))"
	Megabytes="$(($Inum / 1024))"
	#Gigabytes="$(($Inum))"
	echo "Bytes = $Bytes B"
	echo "Kilobytes = $Kilobytes KB"
	echo "Megabytes = $Inum MB"
	echo "Gigabytes = $Gigabytes GB"

elif [[ $Lastone == "B" ]]; then
	Inum=${value:0: -1}
	echo "$Lastone"
	#Bytes="$(($Inum *1024 *1024 *1024))"
	Kilobytes="$((Inum / 1024 ))"
	Megabytes="$(($Kilobytes / 1024))"
	Gigabytes="$(($Megabytes / 1024))"
	echo "Bytes = $Inum B"
	echo "Kilobytes = $Kilobytes KB"
	echo "Megabytes = $Megabytes MB"
	echo "Gigabytes = $Gigabytes GB"

else 
	echo "Error"
	
fi
