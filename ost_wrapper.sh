#!/bin/bash

function set_user_up() {
    local username
    local userid
    local homedir
    username="$1"
    userid="$2"
    homedir="$3"

    sudo useradd -g 100 -u "$userid" -M -d "$homedir" "$username"
}

username=$1
userid=$2
homedir=$3
workdir="$4"
set_user_up "$username" "$userid" "$homedir"
shift 4

cd $workdir
exec sudo -u "$username" /usr/bin/openstack "$@"
