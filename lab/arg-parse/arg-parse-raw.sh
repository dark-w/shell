#!/usr/bin/env bash

if [ $UID != 0 ]; then
    echo "must be run as root!"
    exit 1
fi

function usage() {
    echo "usage: $0 --access-token/-a <access token> --name/-n <member name>"
}

while [[ $# -gt 0 ]]; do
    case $1 in
    -a|--access-token )
        access_token=$2
        shift
        ;;
    -n|--name )
        name=$2
        shift
        ;;
    -h|--help )
        usage
        exit 0
        ;;
    * )
        echo "invalid option '$1'"
        exit 1
        ;;
    esac

    shift
done

if [ -z "$access_token" -o -z "$name" ]; then
    usage
    exit 1
fi

echo $access_token
echo $name
