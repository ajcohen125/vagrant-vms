#!/bin/bash

#Setup script that will run based off the Host OS

#get OS version
VERSION=$(uname -vr)

#run install commands based on OS
if [[ "$VERSION" =~ "Ubuntu" ]]; then
    sudo apt install -y virtualbox virtualbox-ext-pack vagrant
fi

if [[ "$VERSION" =~ "el" ]]; then
    echo "centos"

    #install VirtualBox 6.1 and required dependencies
    sudo yum install -y epel-release
    wget -q http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo
    sudo cp virtualbox.repo /etc/yum.repos.d
    sudo yum update -y
    sudo yum install -y gcc dkms make libgomp patch kernel-headers kernel-devel binutils glibc-headers
    sudo yum install -y VirtualBox-6.1

    #install vagrant
    wget -q https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.rpm
    sudo yum localinstall -y vagrant_2.2.14_x86_64.rpm
    rm -f vagrant_2.2.14_x86_64.rpm

fi

#create keypair
if [[ ! -f "mount/vm-key" ]];then
    ssh-keygen -t rsa -f mount/vm-key -q -N ""
fi

#run virtualbox/vagrant setup

vagrant plugin install vagrant-vbguest

vboxmanage hostonlyif create
vboxmanage hostonlyif ipconfig vboxnet0 --ip 192.168.2.1 --netmask 255.255.0.0
