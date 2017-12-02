This is a work in progress. To get started, run the following commands to bring
the virtual machine up and ssh into it.

	$ vagrant up
	$ vagrant ssh

Now run these commands (within the virtual machine) to install & configure the
various tools.

	$ cd /vagrant
	$ sudo ./apply-updates.sh
	$ sudo ./install-vnc-server.sh
	$ sudo ./install-dev-tools.sh

Now you should be able to vnc into the virtual machine from your desktop.

* Port: 5901
* Password: vnc123

To see the IP address of the virtual machine, run the following command (within
the virtual machine):

	$ /sbin/ifconfig
