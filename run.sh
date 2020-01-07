#!/bin/sh
qemu-system-x86_64 -enable-kvm -m 2048 \
    -hda agl-demo-platform-qemux86-64.vmdk \
    -cpu kvm64 -cpu qemu64,+ssse3,+sse4.1,+sse4.2,+popcnt \
    -vga virtio -show-cursor \
    -device virtio-rng-pci \
    -serial mon:stdio -serial null \
    -soundhw hda \
    -net nic,vlan=0 \
    -net user,hostfwd=tcp::2222-:22
