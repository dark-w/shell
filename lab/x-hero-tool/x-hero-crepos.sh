#!/usr/bin/env bash

for rn in `cat x-hero-reponame.list`; do
    curl -X POST --header 'Content-Type: application/json;charset=UTF-8' 'https://gitee.com/api/v5/orgs/x-hero/repos' -d '{"access_token":"10147de3dfd18eae7e277851c8a3f419","name":"'${rn}'","has_issues":"true","has_wiki":"true","can_comment":"true","public":2,"private":"false","path":"'${rn}'"}'
done
