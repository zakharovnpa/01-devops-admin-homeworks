root@mx-linux:~# ss -at sport = :22
State                       Recv-Q                      Send-Q                                           Local Address:Port                                            Peer Address:Port
LISTEN                      0                           128                                                    0.0.0.0:ssh                                                  0.0.0.0:*
ESTAB                       0                           0                                                 192.168.1.99:ssh                                             192.168.1.22:55753
LISTEN                      0                           128                                                       [::]:ssh                                                     [::]:*
