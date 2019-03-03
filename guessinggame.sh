#!/usr/bin/env bash
# File: guessinggame.sh
# Author: Daniel Kuenzle

nfiles=$(ls -l | egrep ^-.* | wc -l)
echo "Guess and enter the number of files in this directory:"
read guess
while [[ $guess -ne $nfiles ]]
do
	if [[ $guess -lt nfiles ]]
	then
		msg="too low"
	else
		msg="too high"
	fi
	echo "Your guess is $msg. Please try again or quit with ^C:"
	read guess
done
echo "Congratulations! $guess the correct number."
