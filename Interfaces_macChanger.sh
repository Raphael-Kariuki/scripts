ip link show|awk '/^[0-9]/{printf "%s\n" ,$2}'\
|sed 's/://g'\
|sed 's/lo//g'\
|sed 's/ppp0//g'\
|sed '/^$/d'>interfaces.txt
: '
1st argument@awk..leave out anything with 0-9 characters
 and print the string in
2nd position each on a new line

2nd argument @sed ..delete colons 
'
while read LINE ;
do
echo "Working on $LINE"
echo $LINE| xargs sudo macchanger -r --bia 
done <  $PWD/interfaces.txt
