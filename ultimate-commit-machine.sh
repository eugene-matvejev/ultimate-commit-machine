#!/bin/bash

COPY="${PWD}/README.md";
DESTROY="${PWD}/README.md.attack";

for i in {1..499000}
do
# could be optimized without using IO.
# need some changes, copy README.md to README.md.attack
    cp -f $COPY $DESTROY;
    git add .
    git commit -m "${i}-1 test commit attack";

# need some changes, delete README.md.attack
    rm -rf $DESTROY;
    git add .
    git commit -m "${i}-2 test commit attack";
done
