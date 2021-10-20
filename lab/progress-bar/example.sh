#!/bin/bash
i=0
str=""
arry=("\\" "|" "/" "-")
while [ $i -le 100 ]; do
    let index=i%4
    let color=40
    let bg=30
    printf "\033[${color};${bg}m%-s\033[0m %d %c\r" "$str" "$i" "${arry[$index]}"
    sleep 0.1 
    let i=i+1
    str+="#"
done
printf "\n"
