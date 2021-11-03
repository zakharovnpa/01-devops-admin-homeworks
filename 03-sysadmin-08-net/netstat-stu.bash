root@mx-linux:~# netstat -stu
IcmpMsg:
    OutType3: 24
Tcp:
    4 active connection openings
    2 passive connection openings
    0 failed connection attempts
    0 connection resets received
    2 connections established
    1027 segments received
    862 segments sent out
    0 segments retransmitted
    0 bad segments received
    24 resets sent
Udp:
    208 packets received
    24 packets to unknown port received
    0 packet receive errors
    177 packets sent
    0 receive buffer errors
    0 send buffer errors
    IgnoredMulti: 7
UdpLite:
TcpExt:
    1 TCP sockets finished time wait in fast timer
    1 delayed acks sent
    552 packet headers predicted
    160 acknowledgments not containing data payload received
    105 predicted acknowledgments
    TCPRcvCoalesce: 157
    TCPOFOQueue: 101
    TCPAutoCorking: 73
    TCPOrigDataSent: 397
    TCPHystartTrainDetect: 1
    TCPHystartTrainCwnd: 20
    TCPDelivered: 401
    TCPAckCompressed: 26
IpExt:
    InMcastPkts: 30
    OutMcastPkts: 23
    InBcastPkts: 35
    OutBcastPkts: 23
    InOctets: 1086757
    OutOctets: 160292
    InMcastOctets: 4785
    OutMcastOctets: 4163
    InBcastOctets: 4212
    OutBcastOctets: 2517
    InNoECTPkts: 1343
root@mx-linux:~#
