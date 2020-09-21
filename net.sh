#!/bin/bash
systemctl start network-manager
status=$?
if test $status -eq 0
then 
echo "Master,NetManager is up and running "
else
echo "Please,bring up the NetManager"
fi
sleep 2s

if ping -c 1 -q -W 1 google.com > /dev/null;
then 
echo "The connect is Okkay"
else
echo "The connect dont connect"
fi 
