#!/bin/bash
CMD="vim --servername mommy "

# TODO xdo focus

if [[ $1 ]]; then
    if [[ `vim --serverlist` == MOMMY ]]; then
        CMD="$CMD --remote"
    fi
    CMD="$CMD $1"
fi

exec $CMD;
