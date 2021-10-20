#!/usr/bin/env bash

function usage() {
    echo 'usage:'
    echo '  ./x-hero-tool.sh clone -a YOUR-ACCESS-TOKEN'
}

function cap_parse_args() {
    shift
    while getopts 'a:' OPT; do
        case $OPT in
            a)
                access_token=$OPTARG;;
            \?)
                usage;;
        esac
    done
}

function member_parse_args() {
    shift
    while getopts 'n:a:' OPT; do
        case $OPT in
            n)
                mem_name=$OPTARG;;
            a)
                access_token=$OPTARG;;
            \?)
                usage;;
        esac
    done
}

function x_hero_get_rpn_array() {
    
}

if [ $1 == clone -o $1 == pull ]; then
    cap_parse_args $@
elif [ $1 == member ]; then 
    member_parse_args $@
fi

echo $access_token
echo $mem_name
