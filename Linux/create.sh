#!/bin/bash

if [ "$1" != "-h" ]
then
    filename="$1"
    shift
fi

ide=""
pt=""

main(){
    ParseParams "$@"
    default
    cd $pt
    flutter create $filename
    cd -
    python upload.py $filename $pt/$filename $ide $USER
}

ParseParams(){
    while getopts :i:p:h opt; 
    do
        case $opt in
            i) ide="$OPTARG";;
            p) pt="$OPTARG";;
            h) usage;;
            \?) echo "Please enter proper arguments";exit;;
        esac
    done
    shift $(($OPTIND-1))
}

default(){

    if [ "$ide" == "" ]
    then
        ide="as"
    fi

    if [ "$pt" == "" ]
    then
        pt="/home/$USER/Desktop"
    fi
}


usage(){
    echo "Usage - create filename -i['AS': android studio or 'code': VSCode] -p [default: desktop]"
    exit
}
 
main "$@"
