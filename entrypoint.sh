#!/bin/sh -l
ls
./wait-for-it.sh "$1" --timeout="$2" --strict -- "$3"
