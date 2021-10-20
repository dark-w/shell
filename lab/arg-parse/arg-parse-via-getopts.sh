#!/usr/bin/env bash

function usage() {
    echo "usage: $0 -a <access_token> -n <member_name>"
}

while getopts "a:hn:" OPT; do
    case $OPT in
    a )
        access_token=$OPTARG
        ;;
    h )
        usage
        exit 0
        ;;
    n )
        member_name=$OPTARG
        ;;
    ? )
        usage
        exit 1
        ;;    
    esac
done

if [ -z "$access_token" -o -z "$member_name" ]; then
    usage
    exit 1
fi

echo $access_token
echo $member_name
