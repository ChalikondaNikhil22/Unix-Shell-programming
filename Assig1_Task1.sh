#!/bin/bash

Month=$1
#Call the value of MM and store it in month variable
Day=$2
#Call the value of DD and store it in Day
Year=$3
#Call the value of YYYY and store it in Year

case "$Month" in 
	"jan" | "mar" | "may" | "jul" | "aug" | "oct" | "dec"  | "Jan" | "Mar" | "May" | "Jul" | "Aug" | "Oct" | "Dec" | "january" | "march" | "may" | "july" | "august" | "october" | "december" | "Janurary"  | "March" | "May" | "July" | "August" | "October" | "December" | "1" | "3" | "5" | "7" | "8" | "10" | "12" | "01" | "03" | "05" | "07" | "08")

if [ "$Day" -gt 0 -a "$Day" -le 31 ]; then
	echo "valid"
else
	echo "invadid"
fi;;

#Declare every aspects of month in numericals and alphebats

"apr" | "Apr" | "april" | "April" | "4" | "04" | "jun" | "Jun" | "june" | "June" | "6" | "06" | "sep" | "Sep" | "september" | "September" | "9" | "09" | "nov" | "Nov" | "november" | "November" | "11")

if [ "$Day" -gt 0 -a "$Day" -le 30 ]; then
		echo "valid"
else
		echo "invadid"
fi;;

"feb" | "Feb" | "02" | "2" | "february" | "February")


#Logic for feb month
if [ "$Day" -gt 0 -a "$Day" -le 29 ]; then
if [ $((Year%400)) -eq 0 ];
then
	if [ "$Day" -gt 0 -a "$Day" -le 29 ]; then
        echo "valid"
    fi
elif [ $((Year%100)) -eq 0 ]
then
	if [ "$Day" -gt 0 -a "$Day" -le 28 ]; then
        echo "valid"
    else
    	echo "not valid date"
    fi
elif [ $((Year%4)) -eq 0 ]
then
	if [ "$Day" -gt 0 -a "$Day" -le 29 ]; then
        echo "Great, valid date"
    fi
else
	if [ "$Day" -gt 0 -a "$Day" -le 28 ]; then
        echo "Valid date"
        else
    	echo "not valid date"
    fi
fi
else
	echo "invalid date"
fi;;

 
*) 
	echo "ERROR";;  
esac

#placed it here so even if the month is not feb the code shall show whether the year is leap year or not.
if [ $((year%400)) -eq 0 ]
then
        echo "$year is a leap year"
elif [ $((year%100)) -eq 0 ]
then
        echo "$year is not a leap year"
elif [ $((year%4)) -eq 0 ]
then
        echo "$year is a leap year"
else
        echo "$year is not a leap year"
fi

#if [[ $Month == "jan" -o "Jan" -o "januarary" -o "Januarary" -o "01" -o "1" -o "mar" -o "Mar" -o "march" -o "March" -o "03" -o "3" -o "may" -o "May" -o "05" -o "5"
#	-o "jul" -o "Jul" -o "july" -o "July" -o "07" -o "7" -o "aug" -o "Aug" -o "august" -o "August" -o "08" -o "8" -o "oct" -o "Oct" -o "october" -o "October" -o "10" -o "dec" -o "Dec" -o "december" -o "December" -o "12" ]];
#then 
#	$Day=31

