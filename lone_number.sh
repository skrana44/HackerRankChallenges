#!/bin/bash

#There are integers in an array. All but one integer occur in pairs. Your task is to find the number that occurs only once.
#Input Format: The first line of the input contains an integer, indicating the number of integers. The next line contains space-separated integers that form the array .
#set -x
read -p "Enter number of integer you need: " N
read -p "Enter the integers here: " A
NUMBER=(`echo $A | tr -s " " "\n" | sort -n`)
ARGS=${#NUMBER[@]}
if [ $ARGS -eq 1 ]
	then 
		echo lone number is ${NUMBER[0]}
	else
		for ((i=0;i<$ARGS;i++))
			do
				if [ ${NUMBER[$i]} -eq ${NUMBER[`expr $i + 1`]} ]
				then
					continue
				elif [ ${NUMBER[$i]} -eq ${NUMBER[`expr $i - 1`]} ]
				then 
					continue
				else

					echo "Lone number is ${NUMBER[$i]}"

				fi 2>/dev/null
			done

fi

