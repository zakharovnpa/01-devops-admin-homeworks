root@mx-linux:/usr/share/doc/ifenslave/examples# cat ethernet+wifi
A configuration with one ethernet (wire) interfaces and one wifi interface.

-----8<----------8<----------8<----------8<----------8<-----

auto bond0
iface bond0 inet dhcp
        bond-slaves eth0 wlan0
        bond-mode 1
        bond-miimon 100
        bond-primary eth0

allow-bond0 wlan0
iface wlan0 inet manual
        bond-give-a-chance 10
        wpa-bridge bond0
        wpa-key-mgmt WPA-PSK
        wpa-proto WPA
        wpa-group CCMP
        wpa-ssid my-ssid
        wpa-psk "my-secret-password"

-----8<----------8<----------8<----------8<----------8<-----

You do not need an "iface eth0" stanza.

The "auto bond0" stanza is required, else bond0 won't be brought up.

The "allow-bond0 wlan0" stanza is required, to bring wlan0 up together with bond0.

The "wpa-bridge bond0" stanza is required to inform wpa_supplicant that wifi link-level packets will arrive on bond0, not on wlan0.
The "bond-give-a-chance 10" stanza is required to give a chance for wifi authentication to succeed.
root@mx-linux:/usr/share/doc/ifenslave/examples#
