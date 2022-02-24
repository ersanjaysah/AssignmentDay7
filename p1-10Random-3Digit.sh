#!/bin/bash -x

largest=0
secondlargest=0
smallest=0
secondsmallest=0

counter=0
array[0]=$((RANDOM%900+100))
echo $a
array[1]=$((RANDOM%900+100))
echo $b
array[2]=$((RANDOM%900+100))
echo $c
array[3]=$((RANDOM%900+100))
echo $d
array[4]=$((RANDOM%900+100))
echo $e
array[5]=$((RANDOM%900+100))
echo $f
array[6]=$((RANDOM%900+100))
echo $g
array[7]=$((RANDOM%900+100))
echo $h
array[8]=$((RANDOM%900+100))
echo $i
array[9]=$((RANDOM%900+100))
echo $j

echo ${array[@]}
echo ${#array[@]}

for (( i=0; $i<=${#array[@]}; i++ ))
do
	if [[ ${array[$i]} -gt $largest ]]
	then
		(( secondlargest=$largest ))
		(( largest=${array[i]} ))
	else
		if [[ ${array[$i]} -gt $secondlargest && ${array[i]} -lt $largest ]]
		then
			(( secondlargest=${array[i]} ))
		fi
	fi

	if [[ ${array[$i]} -gt $smallest ]]
	then
		((secondsmallest=$smallest))
		((smallest=${array[i]}))
	else
		if [[ ${array[i]} -lt $secondsmallest && ${array[i]} -gt $smallest ]]
		then
			(( secondsmallest=${array[i]} ))
		fi
	fi
done
echo "the second largest no. is $secondlargest"
echo "second smallest is $secondsmallest"

