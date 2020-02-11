#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
help=0
verbose=0
debugging=0
numbercheck='^[0-9]+$'
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo ""
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "---- Added \'$1\' to the arguments array"

case "$1" in
  -h|--help)
    let help=1
    echo "-------- HELP"
    echo "---------------- OPTIONS: -h (help)"
    echo "----------------          -v (verbose)"
    echo "----------------          -d <level> (debugging with level number)"
    exit
    ;;
  -v|--verbose)
    let verbose=1
    echo "-------- VERBOSE"
    #found verbose option
    ;;
  -d|--debug)
    let debugging=1
    debug=$2
    if ! [[ $debug =~ $numbercheck ]];
      then echo "ERROR: $debug is not a valid debugging value. Must be a NUMBER." >&2;
      exit
    fi
    #found debug option
    shift   #must shift to move number out of way of other arguments
    ;;
  *)
    #bad arguments
    echo "-------- I didn't recognize '$1'" .&2

    ##UNNAMED ARGUMENTS SLIDE IN ARRAYS PRESENTATION
    ;;
esac




# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo ""
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo ""
echo ""
if [[ "$verbose" == 1 ]]
  then echo "Verbose mode enabled."
fi
if [[ "$debugging" == 1 ]]
  then echo "Debugging level: $debug"
fi

echo ""
echo "Arguments used: "
echo "${myargs[*]}"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
