#!/bin/sh

# Start libvirtd and virtlogd if not started already.
sudo modprobe vendor-reset

# Now start scream server from hypervisor.
cd /home/prophet/Documents/scream/Receivers/unix/build
./scream -o pulse -p 4011 -i enp42s0




