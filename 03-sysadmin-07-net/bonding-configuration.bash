https://www.kernel.org/doc/Documentation/networking/bonding.txt 

4 Querying Bonding Configuration
=================================

4.1 Bonding Configuration
-------------------------

	Each bonding device has a read-only file residing in the
/proc/net/bonding directory.  The file contents include information
about the bonding configuration, options and state of each slave.

	For example, the contents of /proc/net/bonding/bond0 after the
driver is loaded with parameters of mode=0 and miimon=1000 is
generally as follows:

	Ethernet Channel Bonding Driver: 2.6.1 (October 29, 2004)
        Bonding Mode: load balancing (round-robin)
        Currently Active Slave: eth0
        MII Status: up
        MII Polling Interval (ms): 1000
        Up Delay (ms): 0
        Down Delay (ms): 0

        Slave Interface: eth1
        MII Status: up
        Link Failure Count: 1

        Slave Interface: eth0
        MII Status: up
        Link Failure Count: 1

	The precise format and contents will change depending upon the
bonding configuration, state, and version of the bonding driver.

4.2 Network configuration
-------------------------

	The network configuration can be inspected using the ifconfig
command.  Bonding devices will have the MASTER flag set; Bonding slave
devices will have the SLAVE flag set.  The ifconfig output does not
contain information on which slaves are associated with which masters.

	In the example below, the bond0 interface is the master
(MASTER) while eth0 and eth1 are slaves (SLAVE). Notice all slaves of
bond0 have the same MAC address (HWaddr) as bond0 for all modes except
TLB and ALB that require a unique MAC address for each slave.

# /sbin/ifconfig
bond0     Link encap:Ethernet  HWaddr 00:C0:F0:1F:37:B4
          inet addr:XXX.XXX.XXX.YYY  Bcast:XXX.XXX.XXX.255  Mask:255.255.252.0
          UP BROADCAST RUNNING MASTER MULTICAST  MTU:1500  Metric:1
          RX packets:7224794 errors:0 dropped:0 overruns:0 frame:0
          TX packets:3286647 errors:1 dropped:0 overruns:1 carrier:0
          collisions:0 txqueuelen:0

eth0      Link encap:Ethernet  HWaddr 00:C0:F0:1F:37:B4
          UP BROADCAST RUNNING SLAVE MULTICAST  MTU:1500  Metric:1
          RX packets:3573025 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1643167 errors:1 dropped:0 overruns:1 carrier:0
          collisions:0 txqueuelen:100
          Interrupt:10 Base address:0x1080

eth1      Link encap:Ethernet  HWaddr 00:C0:F0:1F:37:B4
          UP BROADCAST RUNNING SLAVE MULTICAST  MTU:1500  Metric:1
          RX packets:3651769 errors:0 dropped:0 overruns:0 frame:0
          TX packets:1643480 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:100
          Interrupt:9 Base address:0x1400
