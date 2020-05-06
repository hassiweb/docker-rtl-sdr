#!/bin/bash
docker run -it --rm --device=/dev/bus/usb:/dev/bus/usb -p 1234:1234 rtl-sdr-server