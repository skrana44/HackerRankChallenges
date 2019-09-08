#!/bin/bash
#The problem can be found in : https://www.hackerearth.com/practice/basic-programming/input-output/basics-of-input-output/practice-problems/algorithm/seven-segment-display-nov-easy-e7f87ce0/
#Alice got a number written in seven segment format where each segment was creatted used a matchstick.

#Example: If Alice gets a number 123 so basically Alice used 12 matchsticks for this number.

#Alice is wondering what is the numerically largest value that she can generate by using at most the matchsticks that she currently possess.Help Alice out by telling her that number.


#set -x
echo As this program does not calculate the desired number for multiples of 10, please enter any number other that multiple of 10
read -p "Enter the number: " NUMBER

display_segments() {

	local a="$1"
	case $a in
                        0 | 6 |9)       SEGMENTS=6;;
                        2 | 3 |5)       SEGMENTS=5;;
                        1)              SEGMENTS=2;;
                        4)              SEGMENTS=4;;
                        7)              SEGMENTS=3;;
                        8)              SEGMENTS=7;;
                esac

		echo $SEGMENTS
}

if [ $NUMBER -lt 10 ]
	then
		display_segments $NUMBER
else

    		   i=0
         	    while [ `expr $NUMBER % 10` -gt 0 ]
                       	do
                       	NUMBER_ARR[$i]=`expr $NUMBER % 10`
                       	NUMBER=`expr $NUMBER / 10`
                       	i=`expr $i + 1`
                       	done
                       	echo ${NUMBER_ARR[@]}
                       	SEGMENTS_FOR_LARGE_NUMBER=0
                       	for j in ${NUMBER_ARR[@]}
                             	do
					display_segments $j
                  			     SEGMENTS_FOR_LARGE_NUMBER=`expr $SEGMENTS + $SEGMENTS_FOR_LARGE_NUMBER`
                       		done
				SEGMENTS=$SEGMENTS_FOR_LARGE_NUMBER

fi

		echo Number of segments $SEGMENTS
		i=0
		if [ $SEGMENTS -ne 3 ]
			then
				while [ $SEGMENTS -gt 0 ]
					do
						SEGMENTS=`expr $SEGMENTS - 2`
						ARR[$i]=1
						i=`expr $i + 1`
						if [ `expr $SEGMENTS % 2` -eq 0 ] #-o [ $SEGMENTS -eq 5 ] -o [ $SEGMENTS -eq 7 ] -o [ $SEGMENTS -eq 9 ] 
							then 
								continue
						elif [ $SEGMENTS -eq 3 ]
							then
								ARR[$i]=1
								ARR[0]=7
								break
							else
								continue
						fi
					done

					echo The mamimum number you can make is ${ARR[@]}
			else
				ARR[0]=7
				echo The mamimum number you can make is ${ARR[@]}
		fi

