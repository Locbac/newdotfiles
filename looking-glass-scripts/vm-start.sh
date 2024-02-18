#!/bin/bash

# virsh start $1                                                      # Optional line, this will simply start the VM if it isn't running. You can delete this if you wish. Make sure to change the name to your VM name.
/usr/local/bin/looking-glass-client -m 97 -c DXGI >/dev/null 2>&1 & # Starts Looking Glass, and ignores all output (We aren't watching anyways)
# /usr/bin/sudo /usr/local/bin/scream -m /dev/shm/scream-ivshmem -o alsa & # Starts Scream

wait -n     # We wait for any of these processes to exit. (Like closing the Looking Glass window, in our case)
pkill -P $$ # We kill the remaining processes (In our case, scream)
