4)

#!/bin/bash
findTriplets(){
#Passed values to functions
local trippletArray=("$@")
local length=${#trippletArray[@]}
echo $length
        for (( i=0; i<(length-2); i++ ))
        do
                for (( j=(i+1); j<(length-1); j++ ))
                do
                        for ((k=(j+1); k<length; k++ ))
                        do
                        if [ $(( ${trippletArray[$i]} + ${trippletArray[$j]} + ${trippletArray[$k]} )) = 0 ]
                        then
                         	echo "${trippletArray[$i]} + ${trippletArray[$j]} +  ${trippletArray[$k]}=0"
                        fi
                        done
                done
        done
}

inputTrippletArrayA=(0 4 -3 -1)
inputTrippletArrayB=(0 -1 2 -3 1 -2 3 4 -4)

# Finding triplets for array A
echo "For Array A tripplets"
findTriplets ${inputTrippletArrayA[@]}
# Finding triplets for array B
echo "For Array B tripplets"
findTriplets ${inputTrippletArrayB[@]}



