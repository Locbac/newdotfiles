#!/bin/bash

sudo mount /dev/nvme0n1p6 /media/amon/Ubuntu -o subvol=@
sudo mount /dev/nvme0n1p6 /media/amon/Ubuntu/home -o subvol=@home
