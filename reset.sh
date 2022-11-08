#! /bin/bash
for ref in main python cpp
do
  git checkout $ref
  git pull upstream $ref
  git reset --hard upstream/$ref
  git push origin $ref --force
done

git clean -f