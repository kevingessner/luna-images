#!/bin/bash

for y in 2021 2022
do
    for pfx in $(seq --format '%02.0f' 0 87)
    do
        git add $y/moon.$pfx*
        git ci -m "$y/$pfx*"
        git push
    done
done
