# !/usr/bin/env bash
# File: makefile
# Author: Daniel Kuenzle

README.md: guessinggame.sh
	echo "Project: Guessing Game" > README.md
	echo "make was run: \c" >> README.md
	date >> README.md
	echo "Lines of code in guessinggame.sh: \c" >> README.md
	cat guessinggame.sh | egrep .+ | egrep -v ^# | wc -l >> README.md
