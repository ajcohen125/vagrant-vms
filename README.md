# Vagrant-VMs

This is a private collection to allow for easy Virtual Machine creation. 
The hypervisor in use is Oracle VirtualBox.
Vagrant is used to automate the bring up process of each virtual machine.

##OS Compatibility

Each OS folder can be used to easily create a Virtual machine running the given OS.
If the OS folder contains a setup script, that OS can be used as the host OS.

Example: The `ubuntu-18.04` folder contains the file `ubuntu-18-04.setup`
which will install the needed programs to run Vagrant and VirtualBox on an
Ubuntu-18.04 server.

##Notes

The Vagrant boxes used are mostly custom boxes that have been uploaded to the Vagrant Cloud.
Default user/pass: vagrant/vagrant
