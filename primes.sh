test  $1 -lt "2" -o $2 -lt "2" -o $3 -lt "2" && exit || echo cool
declare -a prime_numbers
x=1
for a in $(seq $2 $3 ); do
  if [[ $(($a%2)) -eq '1' ]];then
    prime_numbers[$x]=$a
    x=$((x+1))
  fi
done
echo $prime_numbers
len_of_array=$#prime_numbers

starter=1
while [ $starter -le "$len_of_array" ]; do
  if [ $((${prime_numbers[$((starter+1))]}-${prime_numbers[$starter]})) -eq "$1" ]; then
    pair="$prime_numbers[$starter] $prime_numbers[$((starter+1))] "
    #break
    echo $pair
  fi
  starter=$((starter+1))
done
echo $pair
