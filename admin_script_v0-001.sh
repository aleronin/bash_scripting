#!/usr/bin/bash

set -e

############
##
## Variables
##
############

ARGS=$1
FILE=./logs/output.log

##############################################
##
## Redirecting output to output.log file
##
##############################################

exec > >(tee -a $FILE) 2> >(tee -a $FILE >&2) 

####################################################
##
## This will be the section for various of functions
##
####################################################

basic() {

  echo -e "\nHi! You are using a lazy_admin script to show some info about OS! Good luck!"
  echo -e "\nYour system is:"
  hostnamectl | grep 'Operating System\|Kernel'
  echo -e "\nAccoding to Global variables, your Shell is:"
  printenv | grep -w SHELL
  echo -e "\nThis is directory where you are:"
  pwd

}

statisctics() {
  
  echo -e "\nThis is statistics parameters."
  echo -e "\nFiles located in your \"pwd\" directory are:"
  ls -la
  echo -e "\nThat's it for now."
}

if [ $ARGS == basic ]
  then
    basic
    exit
elif [ $ARGS == stat ]
  then
    statisctics
    exit
  else
    echo "There is no such argument. Try to seek for --help."
fi



## if [ $ARGS == basic ]
##   then
##     basic
##     exit
##   else
##     echo "There is no such argumets. Try to seek for --help."
## fi