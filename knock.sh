#!/bin/bash

orange='\033[0;33m'
red='\033[0;31m'

if [ "$1" == "" ]
then
        echo -e "${orange}#########################################################"
        echo -e "${orange}|->${red}                  +PARSING HTML${red}                    <-|"
        echo -e "${orange}|->                    BaianoGeek                     <-|"
        echo -e "${orange}|->                ./knock.sh 192.168.0               <-|"
        echo -e "${orange}#########################################################"
else
        for ip in {1..254};
        do
        hping3 -S -V -p 80 -c 1 $1.$ip 2> /dev/null;
        done
fi
