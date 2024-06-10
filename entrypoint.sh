#!/bin/bash
ls
/wait-for-it.sh  "$INPUT_HOST" --timeout="$INPUT_TIMEOUT "--strict -- "$INPUT_COMMAND"
