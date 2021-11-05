https://www.kernel.org/doc/Documentation/networking/bonding.txt

12.1.1 MT Bonding Mode Selection for Single Switch Topology
-----------------------------------------------------------

	This configuration is the easiest to set up and to understand,
although you will have to decide which bonding mode best suits your
needs.  The trade offs for each mode are detailed below:

balance-rr: This mode is the only mode that will permit a single
	TCP/IP connection to stripe traffic across multiple
	interfaces. It is therefore the only mode that will allow a
	single TCP/IP stream to utilize more than one interface's
	worth of throughput.  This comes at a cost, however: the
	striping generally results in peer systems receiving packets out
	of order, causing TCP/IP's congestion control system to kick
	in, often by retransmitting segments.

	It is possible to adjust TCP/IP's congestion limits by
	altering the net.ipv4.tcp_reordering sysctl parameter.  The
	usual default value is 3. But keep in mind TCP stack is able
	to automatically increase this when it detects reorders.

	Note that the fraction of packets that will be delivered out of
	order is highly variable, and is unlikely to be zero.  The level
	of reordering depends upon a variety of factors, including the
	networking interfaces, the switch, and the topology of the
	configuration.  Speaking in general terms, higher speed network
	cards produce more reordering (due to factors such as packet
	coalescing), and a "many to many" topology will reorder at a
	higher rate than a "many slow to one fast" configuration.

	Many switches do not support any modes that stripe traffic
	(instead choosing a port based upon IP or MAC level addresses);
	for those devices, traffic for a particular connection flowing
	through the switch to a balance-rr bond will not utilize greater
	than one interface's worth of bandwidth.

	If you are utilizing protocols other than TCP/IP, UDP for
	example, and your application can tolerate out of order
	delivery, then this mode can allow for single stream datagram
	performance that scales near linearly as interfaces are added
	to the bond.

	This mode requires the switch to have the appropriate ports
	configured for "etherchannel" or "trunking."

active-backup: There is not much advantage in this network topology to
	the active-backup mode, as the inactive backup devices are all
	connected to the same peer as the primary.  In this case, a
	load balancing mode (with link monitoring) will provide the
	same level of network availability, but with increased
	available bandwidth.  On the plus side, active-backup mode
	does not require any configuration of the switch, so it may
	have value if the hardware available does not support any of
	the load balance modes.

balance-xor: This mode will limit traffic such that packets destined
	for specific peers will always be sent over the same
	interface.  Since the destination is determined by the MAC
	addresses involved, this mode works best in a "local" network
	configuration (as described above), with destinations all on
	the same local network.  This mode is likely to be suboptimal
	if all your traffic is passed through a single router (i.e., a
	"gatewayed" network configuration, as described above).

	As with balance-rr, the switch ports need to be configured for
	"etherchannel" or "trunking."

broadcast: Like active-backup, there is not much advantage to this
	mode in this type of network topology.
