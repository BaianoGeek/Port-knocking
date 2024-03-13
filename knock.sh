#!/bin/bash

orange='\033[0;33m'
red='\033[0;31m'

if [ "$1" == "" ]
then
        echo -e "${orange}#########################################################"
        echo -e "${orange}|->${red}                  +PORT KNOKING${red}                    <->
        echo -e "${orange}|->                    BaianoGeek                     <-|"
        echo -e "${orange}|->             ./knock.sh 192.168.0.200              <-|"
        echo -e "${orange}#########################################################"
else
        for ip in {cat lista};
        do
        hping3 -S -V -p $ip -c 1 $1 2> /dev/null;
        done
fi

