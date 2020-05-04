#!/bin/bash
unrar lb wordsegmentation.rar > files.txt
# -17796 11
cat files.txt | head -17796 > new_file.txt
count=1
input="./new_file.txt"
while IFS= read -r line
do
  echo "$count"
  count=`expr $count + 1`
  echo "$line"
  unrar x wordsegmentation.rar $line
done < "$input"
