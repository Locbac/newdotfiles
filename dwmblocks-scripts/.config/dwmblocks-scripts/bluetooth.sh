#!/usr/bin/env bash
bluetooth=$(bluetoothctl devices | cut -d' ' -f3-)
echo $bluetooth
