ip address add 192.168.2.1$1/24 dev eth1$1
ip link set eth1$1 up
ip route add default via 192.168.2.200