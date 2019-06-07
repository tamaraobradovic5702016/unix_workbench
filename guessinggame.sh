#!/bin/bash

#The Function
function game {
    echo "How many files are there in the current directory?"
	number=$(ls -1 | wc -l)

#The loop
	while [[ $number -ne $guess ]]
	do
		read guess

# The if statement
		if [[ $number -gt $guess ]]
		then
			echo "The guess is too low. Try again."
        elif [[ $number -lt $guess ]]
        then
			echo "You guess is too high. Try again."
		fi
	done

	echo "Congratulation you guessed correct, there are $number files in this directory!"
}

game
