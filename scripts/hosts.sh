

for ((i = 0 ; i < $1 ; i++));
do 
    sudo ip add add 192.168.2.1$i/24 dev qtap$i
    sudo ip link set dev qtap$i up
done