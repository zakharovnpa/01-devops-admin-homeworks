https://www.kernel.org/doc/Documentation/networking/bonding.txt

12.1 Maximizing Throughput in a Single Switch Topology
------------------------------------------------------

	In a single switch configuration, the best method to maximize
throughput depends upon the application and network environment.  The
various load balancing modes each have strengths and weaknesses in
different environments, as detailed below.

	For this discussion, we will break down the topologies into
two categories.  Depending upon the destination of most traffic, we
categorize them into either "gatewayed" or "local" configurations.

	In a gatewayed configuration, the "switch" is acting primarily
as a router, and the majority of traffic passes through this router to
other networks.  An example would be the following:


     +----------+                     +----------+
     |          |eth0            port1|          | to other networks
     | Host A   +---------------------+ router   +------------------->
     |          +---------------------+          | Hosts B and C are out
     |          |eth1            port2|          | here somewhere
     +----------+                     +----------+

	The router may be a dedicated router device, or another host
acting as a gateway.  For our discussion, the important point is that
the majority of traffic from Host A will pass through the router to
some other network before reaching its final destination.

	In a gatewayed network configuration, although Host A may
communicate with many other systems, all of its traffic will be sent
and received via one other peer on the local network, the router.

	Note that the case of two systems connected directly via
multiple physical links is, for purposes of configuring bonding, the
same as a gatewayed configuration.  In that case, it happens that all
traffic is destined for the "gateway" itself, not some other network
beyond the gateway.

	In a local configuration, the "switch" is acting primarily as
a switch, and the majority of traffic passes through this switch to
reach other stations on the same network.  An example would be the
following:

    +----------+            +----------+       +--------+
    |          |eth0   port1|          +-------+ Host B |
    |  Host A  +------------+  switch  |port3  +--------+
    |          +------------+          |                  +--------+
    |          |eth1   port2|          +------------------+ Host C |
    +----------+            +----------+port4             +--------+


	Again, the switch may be a dedicated switch device, or another
host acting as a gateway.  For our discussion, the important point is
that the majority of traffic from Host A is destined for other hosts
on the same local network (Hosts B and C in the above example).

	In summary, in a gatewayed configuration, traffic to and from
the bonded device will be to the same MAC level peer on the network
(the gateway itself, i.e., the router), regardless of its final
destination.  In a local configuration, traffic flows directly to and
from the final destinations, thus, each destination (Host B, Host C)
will be addressed directly by their individual MAC addresses.

	This distinction between a gatewayed and a local network
configuration is important because many of the load balancing modes
available use the MAC addresses of the local network source and
destination to make load balancing decisions.  The behavior of each
mode is described below.
