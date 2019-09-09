#!/bin/bash
#---------The challenge can be found in: https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/play-with-numbers-2/
#---------You are given an array of n numbers and q queries. For each query you have to print the floor of the expected value(mean) of the subarray from L to R.
#---------First line contains two integers N and Q denoting number of array elements and number of queries.
#---------Next line contains N space seperated integers denoting array elements.
#---------Next Q lines contain two integers L and R(indices of the array).
set -x
#SUM=0
read -p "Enter the number of array elements and total number of queries separated by a space: " TOTAL_ELEMENT TOTAL_QUERIES
echo -e "Enter $TOTAL_ELEMENT numbers separated by space to feed into the array"
read -a ARRAY 
SUM=(0 0 0 0 0 0 0 0 0 0 0)
for ((i=1;i<=TOTAL_QUERIES;i++))
do
	read -p "Enter query: " a b

	for ((j=$a;j<=$b;j++))

		do
			SUM[$j]="`expr ${SUM[$j]} + ${ARRAY[$j]}`"
			SUM[`expr $j + 1`]=${SUM[$j]}
		done

	j=`expr $j - 1`
	TOTAL_NUMBER_FROM_ARRAY=`expr $b - $a + 1`
	MEAN=`expr ${SUM[$j]} / $TOTAL_NUMBER_FROM_ARRAY`
	echo  Mean is $MEAN
	SUM[$j]=0
done
