#!/bin/bash

#var=`wc -l < quotes.txt`
#echo $var

if test -f "speech.txt"; then
	rm "speech.txt"
fi

while IFS= read -r line; do
	#echo "$line"
	#cut -d "~" -line- <<< "$s1"
	s1=${line#*~}
	s2=${line%~*}
	s="$s1 once said, \"$s2\""
	echo "$s" >>"speech.txt"
done <"quotes.txt"

cat "speech.txt"
