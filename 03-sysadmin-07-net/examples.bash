In /etc/network/interfaces, the following stanza will configure bond0, in
active-backup mode, with eth0 and eth1 as slaves.

auto bond0
iface bond0 inet dhcp
	bond-slaves eth0 eth1
	bond-mode active-backup
	bond-miimon 100
	bond-primary eth0 eth1

If the above configuration doesn't work, you might have a system using
upstart for system startup. This is most notably true for recent
Ubuntu versions. The following stanza in /etc/network/interfaces will
produce the same result on those systems.

auto bond0
iface bond0 inet dhcp
	bond-slaves none
	bond-mode active-backup
	bond-miimon 100

auto eth0
iface eth0 inet manual
	bond-master bond0
	bond-primary eth0 eth1

auto eth1
iface eth1 inet manual
	bond-master bond0
	bond-primary eth0 eth1

For a full list of bond-* supported options in /etc/network/interfaces and some
more advanced examples tailored to you particular distros, see the files in
/usr/share/doc/ifenslave-2.6.
