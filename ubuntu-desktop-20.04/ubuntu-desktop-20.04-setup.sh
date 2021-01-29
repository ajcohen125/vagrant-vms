#!/bin/bash

#run this to set up everything on ubuntu-desktop-20.04 or ubuntu-server-20.04

#sudo apt install -y virtualbox virtualbox-ext-pack vagrant

#export VAGRANT_DISABLE_STRICT_DEPENDENCY_ENFORCEMENT=1

if [[ ! -f "mount/vm-key" ]];then
    ssh-keygen -t rsa -f mount/vm-key -q -N ""
fi

#create and configure vbox network adapter
#vboxmanage hostonlyif create
#vboxmanage hostonlyif ipconfig vboxnet0 --ip 192.168.2.1 --netmask 255.255.0.0
