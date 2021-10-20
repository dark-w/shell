#!/usr/bin/env bash

url_list=(`curl -X GET --header \
    'Content-Type: application/json;charset=UTF-8' \
    "https://gitee.com/api/v5/orgs/x-hero/repos?access_token=$1&type=private&page=1&per_page=30" \
    | egrep -o "full_name.*?," \
    | awk -F '/' '{print $2}' \
    | awk -F '\"' '{print $1}'`)


export $CAP=0
# str='*'
echo '---------------------------------------------------------------------'
for ((i=0;i<${#url_list[@]};i++)); do
    if [ ! -d ${url_list[i]} ]; then
        echo "${url_list[i]} is cloning..."
        while true; do  
            git clone git@gitee.com:x-hero/${url_list[i]}.git && break
        done
        echo 'clone done'
    else
        echo "${url_list[i]} is already exist! try to pull..."
        if [ ! -d ${url_list[i]}/.git ]; then
            echo "pull failed: it's not a git repo!"
        else
            cd ${url_list[i]}
            while true; do
                git pull && break
            done
            cd ..
            echo 'pull done'
        fi
    fi
    echo '---------------------------------------------------------------------'
    # printf "%-${#url_list[@]}s %d%%\n" "$str" "$i"
    # str+='*'
done

