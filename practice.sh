#!/bin/bash

# branches you want to practice on
branches=("master")

# number of dummy commits to create in each branch
commits=3

for branch in "${branches[@]}"; do
  git checkout "$branch"
  for i in $(seq 1 $commits); do
    echo "Commit $i on $branch" >> "$branch.txt"
    git add "$branch.txt"
    git commit -m "Commit A$i on $branch"
  done
done