#!/bin/bash
find .  -maxdepth 0 -type f -iname '^x'
for f in *;
do
mv "$f" "$(basename "$f").text"
done



