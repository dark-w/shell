#!/usr/bin/env bash

i=0
str='*'
pro=('/' '|' '-' '\')

for ((;i<100;i++)); do
    let index=i%4
    printf "[%-100s %d%% %c]\r" "$str" "$i" "${pro[$index]}" 
    str+='*'
    sleep 0.02
done
printf "[%s %d%% -]\n" "$str" "$i" 
