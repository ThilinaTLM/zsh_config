#!/bin/sh

FILENAME=/tmp/$(hostname)_$(date "+%Y%m%d_%H%M%S").png;
DEVICE_ID=$(kdeconnect-cli -a --id-only)

spectacle -bnro "${FILENAME}" && 
while ! [ -f "${FILENAME}" ]; do sleep 0.5; done && # Wait until FILENAME is saved
kdeconnect-cli -d $DEVICE_ID --share "${FILENAME}" &&
notify-send -a "Spectacle" "[Screenshot]" "Screenshot captured $FILENAME and sent to the device $DEVICE_ID"

