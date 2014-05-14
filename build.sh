#!/bin/bash

#build all TTF files using 64pt and CommonJS output
mkdir -p lib

SAVEIFS=$IFS
#why is bash so bloody cryptic
IFS=$(echo -en "\n\b")

for i in `find input -type f | egrep '\.(ttf|otf|woff)$'`; 
do
	s=$i;
	s=${s##*/};
	echo -n "$s: "; 
	# s=${s%.*};
	fontpath "$i" -o "lib/$s.js" -s 32 --commonJS; 
done

IFS=$SAVEIFS