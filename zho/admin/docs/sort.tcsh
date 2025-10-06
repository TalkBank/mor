#!/bin/tcsh
if ($1 == "" || $2 == "") then
	echo 'Usage: sort.tcsh col "filename(s)"'
else
	foreach file ($2)
		echo "sort -s -f -k $1 $file > $file.out"
		sort -s -f -k $1 $file > $file.out
	end
endif
