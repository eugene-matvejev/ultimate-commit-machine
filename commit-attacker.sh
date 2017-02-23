#!/bin/bash

$COPY = "${PWD}/README.md";
$DESTROY = "${PWD}/README.md.attack";

for i in {1..1000}
do
	cp $COPY $DESTROY
    git add .
    git commit -m "${i} test commit attack"

	rm -rf $DESTROY;
    git add .
    git commit -m "${i} test commit attack"
done