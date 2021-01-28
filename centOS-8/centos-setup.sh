#!/bin/bash

#run this to set up everything on any centos888888888 system

sudo yum -y install epel-release

wget http://download.virtualbox.org/virtualbox/rpm/rhel/virtualbox.repo

sudo vp virtualbox.repo /etc/yum.repos.d

sudo yum -y update

sudo yum -y install gcc dkms make qt libgomp patch kernel-headers kernel-devel binutils glibc-headers glibc-devel font-forge

sudo yum install -y virtualbox

#install vagrant
wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.rpm

sudo yum -y localinstall vagrant_2.2.14_x86_64.rpm

vagrant box add centos-vb --name centos-vb-1.0

export VAGRANT_DISABLE_STRICT_DEPENDENCY_ENFORCEMENT=1

if [[ ! -f "mount/node" ]];then
    ssh-keygen -t rsa -f mount/node -q -N ""
fi

#create the needed docker network
#docker network create --gateway=192.1.0.1 --driver=bridge --subnet=192.1.0.0/16 mpi_bridge
