#!/bin/bash
type='^(feat|design|style|fix|docs|refactor|test|chore|move): '
capital='[A-Z]'
subject=$'[ ~`!@#$%&*()_+=\\{}|;\':",.\/<>?[-^a-zA-Z0-9-]+$'
regex="$type$capital$subject"

if [[ ${#MESSAGE} -gt 80 ]]; then
    echo 'Title is too long. Make it up to 80 characters.'
    exit 1
fi


if [[ ! $MESSAGE =~ $regex ]]; then
    if [[ ! $MESSAGE =~ $type ]]; then
        echo 'Unexpected type'
        exit 11
    fi

    if [[ ! $MESSAGE =~ $type$capital ]]; then
        echo 'Should start with capital letter'
        exit 12
    fi

    echo 'Unexpected character(s) in subject'
    exit 13
fi
