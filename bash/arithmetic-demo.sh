#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

#modifications begin:

read -p "Please enter two numbers.

First number: " firstnum
read -p "Second number: " secondnum

subtract1=$((firstnum - secondnum))
subtract2=$((secondnum - firstnum))
multiplication=$((firstnum * secondnum))
division1=$((firstnum / secondnum))
mod1=$((firstnum % secondnum))
division2=$((secondnum / firstnum))
mod2=$((secondnum % firstnum))

echo "
-+-+-+-+-+SUBTRACTION+-+-+-+-+-

$firstnum minus $secondnum is $subtract1.
OR
$secondnum minus $firstnum is $subtract2.

-+-+-+-+-+MULTIPLICATION+-+-+-+-+-

$firstnum times $secondnum is $multiplication.

-+-+-+-+-+DIVISION+-+-+-+-+-

$firstnum divided by $secondnum is $division1 with a remainder of $mod1.
OR
$secondnum divided by $firstnum is $division2 with a remainder of $mod2.

-+-+-+-+-+EXPONENT+-+-+-+-+-

$firstnum to the power of $secondnum is $(($firstnum ** $secondnum))
"
#back to original
echo "
-+-+-+-+-+ORIGINAL SCRIPT+-+-+-+-+-
"
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
