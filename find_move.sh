#!/bin/bash

search_dir=$1
mvto=$2
file_types="png jpg jpeg gif mp4 3gp mkv avi"

for i in $file_types
do
   find $search_dir -iname "*.$i" -type f -print0 | xargs -0 -I '{}' mv "{}" $mvto
done
