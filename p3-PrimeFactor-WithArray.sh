#/bin/bash -x

read -p "Please Enter your number here: " num
declare -a array=()
for ((i=1; i<=$num; i++))
do
	count=0
	for ((j=1; $j<=$i; j++))
	do
		if (($i%$j == 0))
		then
			((count++))
			((array++))
		fi
	done
	if (($count==2))
	then
		echo $i
	fi
done

