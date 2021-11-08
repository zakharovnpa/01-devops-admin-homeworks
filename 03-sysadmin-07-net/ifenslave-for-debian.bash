
ifenslave for Debian
----------------------

The ifenslave program distributed with the Linux kernel sources has not always
been up to date, and several modified versions have been floating around. The
latest kernels now contain an updated version though, but the best way to
configure bonding is via the files in /sys/class/net/$master/bonding/. This
Debian package therefore does not contain the binary from the kernel sources,
but provides a shell script with identical functionality.

You can also enslave interfaces using Debian's /etc/network/interfaces file:

- You can specify in the stanza of a bonding interface which slaves it
  has.
- You can specify in the stanza of a regular interface that it should be
  enslaved to a bonding master.
- You can setup the master interface mode and any other possible attribute
  of the master in the stanza of a bonding interface or in the stanza of
  the slaves of this interface.

For a list of the supported bonding-related options that can be used in
/etc/network/interfaces, see "List of bonding-related options" below.

See also the examples directory for some common configurations.

--------------------------------------------------------------------------------

A bonding master is defined like this:

iface bond0 inet static
        address 208.77.188.166
        ...
        bond-primary eth0 eth1

The bonding slaves should then be defined like this:

auto eth0
iface eth0 inet manual
        bond-master bond0

auto eth1
iface eth1 inet manual
        bond-master bond0

Previous versions of the package supported specifying the slaves all in the
stanza for the bonding interface, using the "bond-slaves" option.  However,
in such a configuration there is a race condition between bringing up the
hardware driver for the ethernet devices and attempting to bring up the
bonded interface; the bonding interface needs to be initiated from the slave
interfaces instead.

You can set additional bonding options by adding them to the interface
section:

        bond-mode    active-backup

This would run the bonding device in active backup mode with eth0 as primary.
This would run the bonding device in active backup mode with eth0 as primary.

If the master interface is not available at the time the first slave is setup,
it will be created and setup according to bond-* options in the *slave* stanza.
For this reason, in order to get consistent results, the values of all the
bond-* options should normally be identical in the master stanza and in all the
possible slave stanzas. However, there exist some good reasons to have
different options in a different stanza - for example, to change the primary slave
when hotpluging a new slave.

Using ifdown on a master interface will cause all slaves to be freed and
disabled. The master is also cleaned-up to ensure reliable results if the
master is brought up later.

Using ifup on a slave interface will bring the master interface up if not already
up, but without calling ifup for the master interface, to avoid an infinite loop.

Using ifdown on a slave interface will cause this interface to be freed but
won't change the master in any other way.

--------------------------------------------------------------------------------
List of bonding-related options.
--------------------------------------------------------------------------------

The following is the list of bond-* options that can be used in a stanza in
/etc/network/interfaces. For a more general description of the interfaces file,
read the interfaces(5) manual page.

Most of these options are used to write into bonding-related files in some
subdirectories of /sys.

For the expected effects of writing into bonding-related /sys files, please read
the bonding documentation (Documentation/networking/bonding.txt) in the linux
Kernel source tree.

If you think that a bond-* option should exist to write into a bonding-related
*writable* file in /sys, but no bond-* option exists for that, please report a
bug against the ifenslave package.

Last checked for kernel version 2.6.35-rc1.

* bond-active-slave:
        Write into /sys/class/net/<bond>/bonding/active_slave
        Also force the slave to be up.

* bond-ad-select:
        Write into /sys/class/net/<bond>/bonding/ad_select

* bond-arp-interval:
        Write into /sys/class/net/<bond>/bonding/arp_interval
        One of bond-miimon or bond-arp-interval should be given, otherwise,
        bonding won't detect link failure. If using bond-arp-interval,
        bond-arp-ip-target must also be used.
        If both bond-arp-interval and bond-miimon options are given,
        bond-arp-interval will be ignored.

* bond-arp-ip-target:
        Write into /sys/class/net/<bond>/bonding/arp_ip_target
        Several IP addresses can be given to bond-arp-ip-target.
        You must not add a + sign in front of the target ip addresses.

* bond-arp-validate:
        Write into /sys/class/net/<bond>/bonding/arp_validate

* bond-downdelay:
        Write into /sys/class/net/<bond>/bonding/downdelay

* bond-fail-over-mac:
        Write into /sys/class/net/<bond>/bonding/fail_over_mac

* bond-give-a-chance:
        This option is designed to workaround a bug in wpa_supplicant, when used with
        bonding:
        With some versions of the Linux Kernel, one must use the -b option of
        wpa_supplicant to tell wpa_supplicant that it must expect wifi authentication
        packets on the master interface. This is required because until recently
        (2.6.30?) it was not possible to receive a packet on a slave interface.
        Unfortunately, this -b option has the side effect of also *sending* wifi
        authentication packets on the master interface.  If the active interface is
        not the wifi interface at the time wpa_supplicant tries to authenticate, the
        wifi AP won't receive anything, causing the authentication to fail.

        If the option bond-give-a-chance is set for a slave interface, then this
        interface will be forced to be the primary (and so active) interface for the
        given number of seconds or until the wifi link is up, whichever comes first.
        This will give a chance for the wifi authentication to succeed, hence the name
        of the option.

        You should use the bond-give-a-chance option if you also use the wpa-bridge
        option from wpasupplicant package, that set the -b option of wpa_supplicant.

        If you don't use the wap-bridge option, you probably don't need the
        bond-give-a-chance option.

* bond-lacp-rate:
        Write into /sys/class/net/<bond>/bonding/lacp_rate

* bond-master:
        Write into /sys/class/net/<bond>/bonding/slaves
        The bond-master option is used in the slave stanza to specify the name of
        the master (bonding) interface to which this slave should be enslaved.
        One of bond-master or bond-slaves must be given for all other bond-*
        options to have any effect.
        If both bond-master and bond-slaves options are given, bond-slaves will
        be ignored.

* bond-miimon:
        Write into /sys/class/net/<bond>/bonding/miimon
        One of bond-miimon or bond-arp-interval should be given, otherwise,
        bonding won't detect link failure.

* bond-mode:
        Write into /sys/class/net/<bond>/bonding/mode

* bond-num-grat-arp:
        Write into /sys/class/net/<bond>/bonding/num_grat_arp
:

* bond-num-unsol-na:
        Write into /sys/class/net/<bond>/bonding/num_unsol_na

* bond-primary:
        Write into /sys/class/net/<bond>/bonding/primary
        Several interfaces can be given to bond-primary. The first interface
        that is found to be enslaved would become the primary. If no slave
        in bond-primary is found, then the primary does not change.
        You must not add a + sign in front of the slave interface names.

* bond-primary-reselect:
        Write into /sys/class/net/<bond>/bonding/primary_reselect

* bond-queue-id:
        Write into /sys/class/net/<bond>/bonding/queue_id
        Several <interface>:<queue_id> pairs can be given to bond-queue-id,
        separated by space.

* bond-slaves:
        Write into /sys/class/net/<bond>/bonding/slaves
        The bond-master option is used in the master stanza to specify the names of
        the slave interfaces to enslave to this master (bonding) interface.
        One of bond-master or bond-slaves must be given for all other bond-*
        options to have any effect.
        If both bond-master and bond-slaves options are given, bond-slaves will
        be ignored.
        You must not add a + sign in front of the slave interface names.

* bond-updelay:
        Write into /sys/class/net/<bond>/bonding/updelay

* bond-use-carrier:
        Write into /sys/class/net/<bond>/bonding/use_carrier

* bond-xmit_hash_policy:
        Write into /sys/class/net/<bond>/bonding/xmit_hash_policy

--------------------------------------------------------------------------------

The following files in /sys/class/net/bond*/bonding are read-only, so no
corresponding bond-* option exists to write into them.

* ad_actor_key
* ad_aggregator
* ad_num_ports
* ad_partner_key
* ad_partner_mac
* mii_status

Please report a bug against the ifenslave package if one of them happens to become
writable but no corresponding bond-* option exist.

--------------------------------------------------------------------------------

udev renaming issue
===================


"udev" assigns network adapter names as per

    /etc/udev/rules.d/70-persistent-net.rules

where a rule typically looks like this:

    # PCI device 0x10ec:0x8168 (r8169)
    SUBSYSTEM=="net", ACTION=="add", DRIVERS=="?*", ATTR{address}=="xx:xx:xx:xx:xx:xx", ATTR{dev_id}=="0x0", ATTR{type}=="1", KERNEL=="eth*", NAME="eth0"

The problem with bonding is that two or more NICs may have the very same
MAC address which confuses udev when it tries to (re)name adapters according to
their MACs and fails because another card with this MAC already exists.
When it happens, the NIC may be left with a name such as "rename2" instead of
"eth0" etc.

One possible solution is to change the udev rule to assign network interface names
according to the NICs' PCI IDs instead of MAC addresses. This can be done by replacing

    ATTR{address}=="xx:xx:xx:xx:xx:xx"

with something like

    KERNELS=="0000:04:00.0"

in the file "70-persistent-net.rules".
Corresponding PCI IDs can be found in dmesg:

    sudo dmesg | grep eth

Where one can look for a line fragment like this:

    r8169 0000:04:00.0 eth0: RTL8168e/8111e
#         ^^^^^^^^^^^^

Alternatively PCI IDs can be found using `lspci -D | grep Ether`:

    0000:04:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 06)
#   ^^^^^^^^^^^^

--------------------------------------------------------------------------------

See also:
    https://wiki.debian.org/Bonding

--------------------------------------------------------------------------------

Guus Sliepen <guus@debian.org>, Mon, 13 Jul 2012 13:50:13 +0200
Nicolas de Pesloüan <nicolas.2p.debian@free.fr>, Sun, 19 Dec 2010 19:00:00 +0100
(END)

