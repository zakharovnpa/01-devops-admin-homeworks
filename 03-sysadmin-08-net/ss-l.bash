root@mx-linux:~# ss -l
Netid            State             Recv-Q            Send-Q                                                            Local Address:Port                                        Peer Address:Port
nl               UNCONN            0                 0                                                                          rtnl:lldpd/2213                                              *
nl               UNCONN            0                 0                                                                          rtnl:avahi-daemon/2043                                       *
nl               UNCONN            0                 0                                                                          rtnl:NetworkManager/2371                                     *
nl               UNCONN            0                 0                                                                          rtnl:kernel                                                  *
nl               UNCONN            0                 0                                                                          rtnl:firefox-bin/17233                                       *
nl               UNCONN            0                 0                                                                          rtnl:ntpd/17530                                              *
nl               UNCONN            0                 0                                                                          rtnl:ntpd/17530                                              *
nl               UNCONN            0                 0                                                                          rtnl:firefox-bin/17233                                       *
nl               UNCONN            0                 0                                                                          rtnl:NetworkManager/2371                                     *
nl               UNCONN            0                 0                                                                          rtnl:lldpd/2213                                              *
nl               UNCONN            0                 0                                                                          rtnl:avahi-daemon/2043                                       *
nl               UNCONN            4352              0                                                                       tcpdiag:ss/18294                                                *
nl               UNCONN            768               0                                                                       tcpdiag:kernel                                                  *
nl               UNCONN            0                 0                                                                       selinux:kernel                                                  *
nl               UNCONN            0                 0                                                                         audit:kernel                                                  *
nl               UNCONN            0                 0                                                                         audit:sudo/3274                                               *
nl               UNCONN            0                 0                                                                         audit:sudo/3909                                               *
nl               UNCONN            0                 0                                                                     fiblookup:kernel                                                  *
nl               UNCONN            0                 0                                                                     connector:kernel                                                  *
nl               UNCONN            0                 0                                                                        uevent:-1042340741                                             *
nl               UNCONN            0                 0                                                                        uevent:-404202976                                              *
nl               UNCONN            0                 0                                                                        uevent:bluetoothd/2069                                         *
nl               UNCONN            0                 0                                                                        uevent:NetworkManager/2371                                     *
nl               UNCONN            0                 0                                                                        uevent:kdeconnectd/4114                                        *
nl               UNCONN            0                 0                                                                        uevent:org_kde_powerde/4151                                    *
nl               UNCONN            0                 0                                                                        uevent:-237385697                                              *
nl               UNCONN            0                 0                                                                        uevent:Xorg/2964                                               *
nl               UNCONN            0                 0                                                                        uevent:plasmashell/4105                                        *
nl               UNCONN            0                 0                                                                        uevent:systemd-logind/2758                                     *
nl               UNCONN            0                 0                                                                        uevent:pulseaudio/4145                                         *
nl               UNCONN            0                 0                                                                        uevent:-184526981                                              *
nl               UNCONN            0                 0                                                                        uevent:upowerd/3023                                            *
nl               UNCONN            0                 0                                                                        uevent:-675603630                                              *
nl               UNCONN            0                 0                                                                        uevent:kernel                                                  *
nl               UNCONN            0                 0                                                                        uevent:-328073070                                              *
nl               UNCONN            0                 0                                                                        uevent:systemd-udevd/408                                       *
nl               UNCONN            0                 0                                                                        uevent:ModemManager/2426                                       *
nl               UNCONN            0                 0                                                                        uevent:-60332994                                               *
nl               UNCONN            0                 0                                                                        uevent:udisksd/3010                                            *
nl               UNCONN            0                 0                                                                        uevent:kdeconnectd/4114                                        *
nl               UNCONN            0                 0                                                                        uevent:plasmashell/4105                                        *
nl               UNCONN            0                 0                                                                        uevent:org_kde_powerde/4151                                    *
nl               UNCONN            0                 0                                                                        uevent:pulseaudio/4145                                         *
nl               UNCONN            0                 0                                                                        uevent:upowerd/3023                                            *
nl               UNCONN            0                 0                                                                        uevent:udisksd/3010                                            *
nl               UNCONN            0                 0                                                                        uevent:-404202976                                              *
nl               UNCONN            0                 0                                                                        uevent:Xorg/2964                                               *
nl               UNCONN            0                 0                                                                        uevent:-60332994                                               *
nl               UNCONN            0                 0                                                                        uevent:-1042340741                                             *
nl               UNCONN            0                 0                                                                        uevent:-328073070                                              *
nl               UNCONN            0                 0                                                                        uevent:systemd-logind/2758                                     *
nl               UNCONN            0                 0                                                                        uevent:ModemManager/2426                                       *
nl               UNCONN            0                 0                                                                        uevent:-184526981                                              *
nl               UNCONN            0                 0                                                                        uevent:-237385697                                              *
nl               UNCONN            0                 0                                                                        uevent:NetworkManager/2371                                     *
nl               UNCONN            0                 0                                                                        uevent:bluetoothd/2069                                         *
nl               UNCONN            0                 0                                                                        uevent:systemd-udevd/408                                       *
nl               UNCONN            0                 0                                                                          genl:kernel                                                  *
nl               UNCONN            0                 0                                                                          genl:NetworkManager/2371                                     *
nl               UNCONN            0                 0                                                                          genl:acpid/1916                                              *
nl               UNCONN            0                 0                                                                          genl:acpid/1916                                              *
nl               UNCONN            0                 0                                                                    scsi-trans:kernel                                                  *
p_raw            UNCONN            0                 0                                                                             *:eth0                                                    *
p_raw            UNCONN            0                 0                                                                             *:eth0                                                    *
u_str            LISTEN            0                 128                                                           /run/rpcbind.sock 15489                                                  * 0
u_str            LISTEN            0                 128                                               /sys/fs/cgroup/cgmanager/sock 17524                                                  * 0
u_str            LISTEN            0                 128                                                  /run/user/1000/kdeinit5__0 24344                                                  * 0
u_str            LISTEN            0                 5                                 /run/user/1000/klauncherHmsjPE.1.slave-socket 24360                                                  * 0
u_str            LISTEN            0                 5                                                   /run/user/1000/pulse/native 25215                                                  * 0
u_str            LISTEN            0                 128                                                           /tmp/.X11-unix/X0 20396                                                  * 0
u_str            LISTEN            0                 128                                                        @/tmp/.ICE-unix/4076 24487                                                  * 0
u_str            LISTEN            0                 128                                                          @/tmp/.X11-unix/X0 20395                                                  * 0
u_str            LISTEN            0                 5                                                           /run/cups/cups.sock 40702                                                  * 0
u_str            LISTEN            0                 128                                            /tmp/ssh-P6zX1EhATYHJ/agent.3942 24075                                                  * 0
u_str            LISTEN            0                 10                                                        /var/run/acpid.socket 17709                                                  * 0
u_str            LISTEN            0                 128                                             /var/run/dbus/system_bus_socket 17766                                                  * 0
u_str            LISTEN            0                 128                                                    /run/avahi-daemon/socket 17807                                                  * 0
u_dgr            UNCONN            0                 0                                          /var/lib/samba/private/msg.sock/3061 20946                                                  * 0
u_str            LISTEN            0                 128                                                       @/tmp/dbus-fqh5Bn9C58 196089                                                 * 0
u_dgr            UNCONN            0                 0                                                                      /dev/log 17652                                                  * 0
u_seq            LISTEN            0                 0                                                             /run/udev/control 12582                                                  * 0
u_str            LISTEN            0                 5                                                         /var/run/lldpd.socket 17978                                                  * 0
u_str            LISTEN            0                 50                                                               /tmp/.tNugby/s 20447                                                  * 0
u_str            LISTEN            0                 128                                                         /tmp/.ICE-unix/4076 24488                                                  * 0
u_str            LISTEN            0                 10                                             /run/NetworkManager/private-dhcp 18272                                                  * 0
u_str            LISTEN            0                 128                                                       @/tmp/dbus-8iynFvoMID 20521                                                  * 0
u_dgr            UNCONN            0                 0                                          /var/lib/samba/private/msg.sock/3066 20952                                                  * 0
u_dgr            UNCONN            0                 0                                          /var/lib/samba/private/msg.sock/1858 17615                                                  * 0
u_str            LISTEN            0                 5                                                /var/run/samba/nmbd/unexpected 20335                                                  * 0
u_dgr            UNCONN            0                 0                                          /var/lib/samba/private/msg.sock/3067 20953                                                  * 0
u_str            LISTEN            0                 50                           /tmp/sddm-auth75124498-711a-4a57-89c1-adcf8390d1b0 20387                                                  * 0
u_dgr            UNCONN            0                 0                                          /var/lib/samba/private/msg.sock/3075 20973                                                  * 0
u_str            LISTEN            0                 128                                                       @/tmp/dbus-8KvTtdeBKi 24663                                                  * 0
u_str            LISTEN            0                 128                                                       @/tmp/dbus-prpJPQJDOC 24009                                                  * 0
u_dgr            UNCONN            0                 0                                                                             * 21615                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 12584                                                  * 12585
u_dgr            UNCONN            0                 0                                                                             * 21706                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 17737                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 12585                                                  * 12584
u_dgr            UNCONN            0                 0                                                                             * 24793                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 24436                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 17683                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 18342                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 18412                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 25038                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 20373                                                  * 0
u_dgr            UNCONN            0                 0                                                                             * 18341                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 23682                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 18012                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 23800                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 25462                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 18098                                                  * 0
u_dgr            UNCONN            0                 0                                                                             * 17973                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 23920                                                  * 0
u_dgr            UNCONN            0                 0                                                                             * 23926                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 206858                                                 * 17652
u_dgr            UNCONN            0                 0                                                                             * 17961                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 17868                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 17801                                                  * 17652
u_dgr            UNCONN            0                 0                                                                             * 17859                                                  * 17652
icmp6            UNCONN            0                 0                                                                             *:ipv6-icmp                                              *:*
udp              UNCONN            0                 0                                                                       0.0.0.0:47594                                            0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:ipp                                              0.0.0.0:*
udp              UNCONN            0                 0                                                                     127.0.0.1:836                                              0.0.0.0:*
udp              UNCONN            0                 0                                                                     127.0.0.1:8125                                             0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:bootpc                                           0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:sunrpc                                           0.0.0.0:*
udp              UNCONN            0                 0                                                                  192.168.1.99:ntp                                              0.0.0.0:*
udp              UNCONN            0                 0                                                                     127.0.0.1:ntp                                              0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:ntp                                              0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:50301                                            0.0.0.0:*
udp              UNCONN            0                 0                                                                 192.168.1.255:netbios-ns                                       0.0.0.0:*
udp              UNCONN            0                 0                                                                  192.168.1.99:netbios-ns                                       0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:netbios-ns                                       0.0.0.0:*
udp              UNCONN            0                 0                                                                 192.168.1.255:netbios-dgm                                      0.0.0.0:*
udp              UNCONN            0                 0                                                                  192.168.1.99:netbios-dgm                                      0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:netbios-dgm                                      0.0.0.0:*
udp              UNCONN            0                 0                                                                       0.0.0.0:mdns                                             0.0.0.0:*
udp              UNCONN            0                 0                                                                          [::]:48563                                               [::]:*
udp              UNCONN            0                 0                                                                          [::]:52670                                               [::]:*
udp              UNCONN            0                 0                                                                             *:1716                                                   *:*
udp              UNCONN            0                 0                                                                         [::1]:8125                                                [::]:*
udp              UNCONN            0                 0                                                                          [::]:sunrpc                                              [::]:*
udp              UNCONN            0                 0                                              [fe80::38d6:bc97:eb58:f482]%eth0:ntp                                                 [::]:*
udp              UNCONN            0                 0                                                                         [::1]:ntp                                                 [::]:*
udp              UNCONN            0                 0                                                                          [::]:ntp                                                 [::]:*
udp              UNCONN            0                 0                                                                          [::]:mdns                                                [::]:*
tcp              LISTEN            0                 50                                                                      0.0.0.0:netbios-ssn                                      0.0.0.0:*
tcp              LISTEN            0                 128                                                                     0.0.0.0:47659                                            0.0.0.0:*
tcp              LISTEN            0                 128                                                                     0.0.0.0:sunrpc                                           0.0.0.0:*
tcp              LISTEN            0                 128                                                                     0.0.0.0:ssh                                              0.0.0.0:*
tcp              LISTEN            0                 5                                                                     127.0.0.1:ipp                                              0.0.0.0:*
tcp              LISTEN            0                 50                                                                      0.0.0.0:microsoft-ds                                     0.0.0.0:*
tcp              LISTEN            0                 4096                                                                  127.0.0.1:8125                                             0.0.0.0:*
tcp              LISTEN            0                 4096                                                                    0.0.0.0:19999                                            0.0.0.0:*
tcp              LISTEN            0                 1                                                                             *:sane-port                                              *:*
tcp              LISTEN            0                 50                                                                         [::]:netbios-ssn                                         [::]:*
tcp              LISTEN            0                 128                                                                        [::]:sunrpc                                              [::]:*
tcp              LISTEN            0                 50                                                                            *:1716                                                   *:*
tcp              LISTEN            0                 128                                                                        [::]:ssh                                                 [::]:*
tcp              LISTEN            0                 5                                                                         [::1]:ipp                                                 [::]:*
tcp              LISTEN            0                 4096                                                                      [::1]:8125                                                [::]:*
tcp              LISTEN            0                 50                                                                         [::]:microsoft-ds                                        [::]:*
tcp              LISTEN            0                 128                                                                        [::]:41953                                               [::]:*
