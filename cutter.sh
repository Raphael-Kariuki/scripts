#!/usr/bn/env zsh

url_cutter () {
#echo `echo "$1" | cut -f 1 -d "#"`
echo ${1%%#*}
}

#create an array of arguments supplied
url="$@"

#main function to loop through arguments
overall_cutter(){
for a in $url; do url_cutter $a;done
}
overall_cutter
