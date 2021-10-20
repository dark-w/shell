#!/usr/bin/env bash

url_list=(`curl -X GET --header 'Content-Type: application/json;charset=UTF-8' 'https://gitee.com/api/v5/orgs/x-hero/repos?access_token=10147de3dfd18eae7e277851c8a3f419&type=private&page=1&per_page=20' | egrep -o "full_name.*?," | awk -F '/' '{print $2}' | awk -F '\"' '{print $1}'`)

# dir_list=(`ls -l | grep "^d" | awk '{print $9}'`)

echo '------------------'
for ((i=0;i<${#url_list[@]};i++)); do
    if [ -d ${url_list[i]} ]; then
        if [ ! -f ${url_list[i]}/README.md ]; then
            echo "${url_list[i]} is initing..."
            touch ${url_list[i]}/README.md
            echo 'init done, try to commit and push'
            cd ${url_list[i]}
            git add *
            git commit -asm "init"
            while true; do
                git push && break
            done
            cd .. 
            echo 'push done'
        else
            echo "${url_list[i]} is already inited!"
        fi
        echo '------------------'
    fi
done
