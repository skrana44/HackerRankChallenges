#!/bin/bash
#We provide you with expressions containing +,-,*,^, / and parenthesis. 
#Your task is to evaluate the expression and display the correct output rounding upto decimal places.
#set -x
read -p "Enter the equation: " EQUATION
RESULT=`echo $EQUATION | bc -l`
echo  The result of the equation entered is: 
printf "%.3f"  $RESULT
echo
