# Vagrant-VMs

This is a private collection to allow for easy Virtual Machine creation. 
The hypervisor in use is Oracle VirtualBox.
Vagrant is used to automate the bring up process of each virtual machine.

## OS Compatibility

Each OS folder can be used to easily create a Virtual machine running the given OS.
If the OS folder contains a setup script, that OS can be used as the host OS.

Example: The `ubuntu-18.04` folder contains the file `ubuntu-18-04.setup`
which will install the needed programs to run Vagrant and VirtualBox on an
Ubuntu-18.04 server.

## VM Naming

The VMs are named with the following convention:
`[OS-version]-node-#`

## VM Networking

Each OS will have a different virtual subnet:

Ubuntu-Desktop-20.04: `192.168.10.x` : Master node: `192.168.2.10`

Ubuntu-Server-20.04:  `192.168.20.X` : Master node: `192.168.2.20`

Ubuntu-Server-18.04:  `192.168.30.x` : Master node: `192.168.2.30`

CentOS8:              `192.168.40.x` : Master node: `192.168.2.40`

For each VM, the `.x` in the IP is the node number: so `ubuntu-desktop-20.04-node-2` has an IP of `192.168.10.2`

This means each OS can currently have up to 254 nodes.

## Mount Folder

For each VM, the `mount` folder will be mounted to `/mnt` in each VM, and the contents copied to the user's home directory (`/home/vagrant/`).

Any extra scripts or files needed inside the VM can be placed in that folder. Mount folders are specific to OS version.

## Notes

The Vagrant boxes used are mostly custom boxes that have been uploaded to the Vagrant Cloud.

Default user/pass: vagrant/vagrant

The setup script for each OS will give you the option to create and add SSH keys to the virtual machines.
