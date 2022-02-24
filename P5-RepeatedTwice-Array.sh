#!/bin/bash -x

ARRAYNAME=()
a=0
b=0
for ((i=1; i<=100; i++))
do
	a=$(($i/10))
	b=$(($i%10))
if (($a==$b));
then
	ARRAYNAME+=($i)
fi
done
echo ${ARRAYNAME[@]}
