#!/usr/bin/bash
rm -f all_functions.txt sorted_functions-duplicates.txt
for i in `find -name *.'[ch]'`
do
	(grep '^[a-zA-Z0-9_][a-zA-Z0-9_ \t*][a-zA-Z0-9_ \t*]*(.*)' $i) | sed 's/(.*).*$//' | sed 's/ *$//' | sed 's/^.* //' | sed 's/^[*]//'>>all_functions.txt
done
sort all_functions.txt | uniq > sorted_functions-duplicates.txt

sed '/\<for\>/d' sorted_functions-duplicates.txt | sed '/\<if\>/d'
rm -f all_functions.txt sorted_functions-duplicates.txt
