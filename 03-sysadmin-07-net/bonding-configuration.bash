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
