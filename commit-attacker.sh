#!/bin/bash

COPY="${PWD}/README.md";

for i in {1..499000}
do
    git add .
    git commit -m "${i}-1 test commit attack";

    git -rf COPY;
    git commit -m "${i}-2 test commit attack";
done
