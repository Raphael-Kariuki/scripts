#!/bin/bash

a=0
b=0
while [ $a -lt 200 ]
do
   echo $(tput setaf $b;echo "This is tput color code" $b)
   a=`expr $a + 1`
  b=`expr $b + 1` 
done
