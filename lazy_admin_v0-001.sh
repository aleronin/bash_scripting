#!/usr/bin/bash

set -e

args=$1
##################################################
##
## This will be a section for various of functions
##
##################################################

basic() {

  echo -e "\nHi! You are using a lazy_admin script to show some info about OS! Good luck!"
  echo -e "\nYour system is:"
  hostnamectl | grep 'Operating System\|Kernel'
  echo -e "\nAccoding to Global variables, your Shell is:"
  printenv | grep -w SHELL
  echo -e "\nThis is directory where you are:"
  pwd

}

if [ $args == basic ]
  then
    basic
    exit
  else
    echo "There is no such argumets. Try to seek for --help."
fi

