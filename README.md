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

Now you should be able to vnc into the virtual machine from your desktop. Using
Remmina, create a new connection:

* Protocol: VNC - Virtual Network Computing
* Server: <ip-address>:5901
* User name: vnc
* Password: vnc123
* Color depth: High color (16 bit)
* Quality: Best (slowest)
* Show remote cursor: yes

To see the IP address of the virtual machine, run the following command (within
the virtual machine):

	$ /sbin/ifconfig
