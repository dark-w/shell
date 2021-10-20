#!/usr/bin/env bash

url_list=(`curl -X GET --header 'Content-Type: application/json;charset=UTF-8' 'https://gitee.com/api/v5/orgs/x-hero/repos?access_token=10147de3dfd18eae7e277851c8a3f419&type=private&page=1&per_page=20' | egrep -o "full_name.*?," | awk -F '/' '{print $2}' | awk -F '\"' '{print $1}'`)

for ((i=0;i<${#url_list[@]};i++)); do
    curl -X DELETE --header 'Content-Type: application/json;charset=UTF-8' "https://gitee.com/api/v5/repos/x-hero/${url_list[i]}?access_token=10147de3dfd18eae7e277851c8a3f419"
done
