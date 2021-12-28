#!/bin/bash

#simple password generator

echo "Welcome,this is a simple password generator"
echo "Input length of password"

read PASS_LEN

for p in $(seq 1 6);
do
        openssl rand -base64 48 | cut -c2-$PASS_LEN
done
