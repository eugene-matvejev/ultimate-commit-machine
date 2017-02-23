#!/bin/bash
for i in {1..5}
do
   	echo "$i"
	if (( $1 % 2 == 0 ))
	then
		echo And is also an even number.
	fi
    git mv
done