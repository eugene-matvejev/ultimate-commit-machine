#!/bin/bash

COPY="${PWD}/README.md";
DESTROY="${PWD}/README.md.attack";

for i in {1..499000}
do
    cp -f $COPY $DESTROY;
    git add .
    git commit -m "${i}-1 test commit attack";

    rm -rf $DESTROY;
    git add .
    git commit -m "${i}-2 test commit attack";
done
