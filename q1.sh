#!/bin/bash

sed -i "/^$/d" quotes.txt

cat quotes.txt

echo
echo

awk '!a[$0]++' quotes.txt | tee 'dvdv.txt'

rm quotes.txt

cat dvdv.txt >>quotes.txt

rm dvdv.txt
