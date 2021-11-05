https://www.kernel.org/doc/Documentation/networking/bonding.txt


11.2.1 HA Bonding Mode Selection for Multiple Switch Topology
-------------------------------------------------------------

	In a topology such as the example above, the active-backup and
broadcast modes are the only useful bonding modes when optimizing for
availability; the other modes require all links to terminate on the
same peer for them to behave rationally.

active-backup: This is generally the preferred mode, particularly if
	the switches have an ISL and play together well.  If the
	network configuration is such that one switch is specifically
	a backup switch (e.g., has lower capacity, higher cost, etc),
	then the primary option can be used to insure that the
	preferred link is always used when it is available.

broadcast: This mode is really a special purpose mode, and is suitable
	only for very specific needs.  For example, if the two
	switches are not connected (no ISL), and the networks beyond
	them are totally independent.  In this case, if it is
	necessary for some specific one-way traffic to reach both
	independent networks, then the broadcast mode may be suitable.
