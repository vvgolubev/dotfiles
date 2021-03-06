#!/bin/bash

OPTIND=1
while getopts "r:g:b:e:" opt; do
    case $opt in
    r) red=$OPTARG ;;
    g) green=$OPTARG ;;
    b) blue=$OPTARG ;;
    e) end=$OPTARG ;;
    esac
done

get_charge() {
    charge=`echo ${1} | awk '{print $4}' | sed 's/%,\?$//'`
    if [ ${charge} -ge 15 ]; then
        echo "${green}${charge}%${end}"
    else
        echo "${red}${charge}%${end}"
    fi
}

get_status() {
   charging=`echo ${1} | awk '{print $3}' | sed 's/,$//'`
   case ${charging} in
       "Charging") echo "${green}↑${end}" ;;
       "Full") echo "${green}F${end}" ;;
       "Discharging") echo "${red}↓${end}" ;;
       *) echo "?" ;;
   esac
}

while read -r line; do
    result+="${blue}{${end} $(get_charge "${line}") $(get_status "${line}") ${blue}]${end}"
done < <(acpi --battery)

echo -e ${result}
