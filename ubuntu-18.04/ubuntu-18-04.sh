#!/bin/bash

#run this to set up everything on any ubuntu system

sudo apt install -y virtualbox virtualbox-ext-pack docker vagrant

export VAGRANT_DISABLE_STRICT_DEPENDENCY_ENFORCEMENT=1

if [[ ! -f "mount/node" ]];then
    ssh-keygen -t rsa -f mount/node -q -N ""
fi

#create the needed docker network
docker network create --gateway=192.1.0.1 --driver=bridge --subnet=192.1.0.0/16 mpi_bridge
