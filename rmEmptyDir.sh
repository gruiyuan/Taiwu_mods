#!/bin/bash

_dir=$1

while [[ -n "$(find $_dir -type d -empty)" ]]
do
    find $_dir -type d -empty |xargs -n 1 rmdir
done
