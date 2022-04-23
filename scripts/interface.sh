
sudo ip link set dev qtap$1 up
sudo ip netns add ns$1
sudo ip link add eth1$1 type veth peer name qtap$1
sudo ip link set eth1$1 netns ns$1
sudo ip netns exec ns$1 ip address add 127.0.0.1/8 dev lo
sudo ip netns exec ns$1 ip link set lo up
sudo ip netns exec ns$1 /bin/bash


