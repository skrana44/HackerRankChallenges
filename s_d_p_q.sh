#!/bin/bash
#Given two integers, x and y, find their sum, difference, product, and quotient.

#Input Format : Two lines containing one integer each (and, respectively).

#Output Format : Four lines containing the sum (), difference (), product (), and quotient (), respectively.(While computing the quotient, print only the integer part.)

read -p "First Number: " x
read -p "Second Number: " y

SUM=`expr $x + $y`
DIFF=`expr $x - $y`
PRODUCT=`expr $x \* $y`
QUOTIENT=`expr $x / $y`

echo "Summation is $SUM, Difference is $DIFF, Product is $PRODUCT and Quotient is $QUOTIENT"
