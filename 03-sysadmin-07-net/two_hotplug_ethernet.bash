root@mx-linux:/usr/share/doc/ifenslave/examples#
root@mx-linux:/usr/share/doc/ifenslave/examples# cat two_hotplug_ethernet
A configuration with two hotplug ethernet (wire) interfaces.

-----8<----------8<----------8<----------8<----------8<-----

auto bond0
iface bond0 inet dhcp
        bond-slaves none
        bond-mode 1
        bond-miimon 100

allow-hotplug eth0
iface eth0 inet manual
        bond-master bond0
        bond-primary eth0 eth1

allow-hotplug eth1
iface eth0 inet manual
        bond-master bond0
        bond-primary eth0 eth1

-----8<----------8<----------8<----------8<----------8<-----

The "auto bond0" stanza is required, else bond0 won't bring up.
root@mx-linux:/usr/share/doc/ifenslave/examples#
