#!/bin/bash

COPY="${PWD}/README.md";
DESTROY="${PWD}/README.md.attack";

echo $COPY $DESTROY
for i in {1..1}
do
	cp -f $COPY $DESTROY;
    git add .
    git commit -m "${i}-1 test commit attack";

	ls -la;

	rm -rf $DESTROY;
    git add .
    git commit -m "${i}-2 test commit attack";
done