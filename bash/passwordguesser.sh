#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

read -p "What is your name?: " USER
read -p "Enter your password. 5 attempts remaining: " myPass
referenceString="password"
attempt=4
correct="false"

if [[ "$myPass" == "$referenceString" ]]
  then echo "Correct!"
  let correct="true"
else read -p "Wrong! $attempt Attempts remaining.
Enter your password: " myPass
  let attempt=$attempt-1
fi

if [[ "$correct" == "false" ]]
  then if [[ "$myPass" == "$referenceString" ]]
    then echo "Correct!"
    let correct="true"
  else  read -p "Wrong! $attempt Attempts remaining.
  Enter your password: " myPass
    let attempt=$attempt-1
  fi
fi

if [[ "$correct" == "false" ]]
  then if [[ "$myPass" == "$referenceString" ]]
    then echo "Correct!"
    let correct="true"
  else  read -p "Wrong! $attempt Attempts remaining.
  Enter your password: " myPass
    let attempt=$attempt-1
  fi
fi

if [[ "$correct" == "false" ]]
  then if [[ "$myPass" == "$referenceString" ]]
    then echo "Correct!"
    let correct="true"
  else  read -p "Wrong! $attempt Attempts remaining.
  Enter your password: " myPass
    let attempt=$attempt-1
  fi
fi

if [[ "$correct" == "false" ]]
  then if [[ "$myPass" == "$referenceString" ]]
    then echo "Correct!"
  else echo "Wrong! $attempt Attempts remaining."
  fi
fi
