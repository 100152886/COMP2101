#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling six-sided dice....
$(( RANDOM % 6 + 1)) rolled.
"

#added rolling PAIR of dice
echo "
Rolling pair of six-sided dice....
$(( RANDOM % 6 + 1)) and $(( RANDOM % 6 + 1)) rolled.
"
#added rolling FIVE six-sided dice
echo "
Rolling five six-sided dice....
Rolled $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)) and $(( RANDOM % 6 + 1)).
"

#added rolling single twenty-sided dice
echo "
Rolling D20....
Rolled $(( RANDOM % 20 + 1)).
"
