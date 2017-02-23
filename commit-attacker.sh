#!/bin/bash
for i in {1..1}
do
	cp ./README.md ../README.md
   	echo "${i}";

	if (( $i % 2 == 0 ))
	then
		cp 	../README.md README.md.attack
	else
		rm -rf ./README.md.attack
	fi

    git add .
    git commit -m "${i} test commit attack"
done