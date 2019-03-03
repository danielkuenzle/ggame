# !/usr/bin/env bash
# File: guessinggame.sh
# Author: Daniel Kuenzle

function countfiles {
	local n=$(ls -l | egrep ^-.* | wc -l)
	echo $n
}

nfiles=$(countfiles)
echo "How many files are in the current directory?"
echo "Make a guess:"
read guess
while [[ $guess -ne $nfiles ]]
do
	if [[ $guess -lt nfiles ]]
	then
		msg="too low"
	else
		msg="too high"
	fi
	echo "Your guess is $msg."
	echo "Please try again:"
	read guess
done
echo "Congratulations! $guess is the correct number."
