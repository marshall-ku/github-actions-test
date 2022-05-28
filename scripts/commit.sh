#!/bin/bash
if [[ `git status --porcelain` ]]; then
    git config user.name "github-actions"
    git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
    git add -A
    git commit -m "$MESSAGE"
    git push
fi
