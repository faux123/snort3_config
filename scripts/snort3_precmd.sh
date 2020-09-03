#/bin/sh

#kill snort
killall snort

#compact memory
echo 1 > /proc/sys/vm/compact_memory

#disable any offloading functionalities from eth0 and br0
ethtool -K eth0 tso off gso off gro off
ethtool -K br0 tso off gso off gro off
