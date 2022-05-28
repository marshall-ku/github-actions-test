#!/bin/bash
regex="^(feat): [A-Z][A-Za-z ]+(\(#[1-9]+\))?$"

if [[ ! $MESSAGE =~ $regex ]]; then
    echo 'Check your title'
    exit 1
fi