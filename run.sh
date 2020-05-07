#!/bin/bash
docker run -it --rm --device=/dev/bus/usb:/dev/bus/usb -p 1234:1234 registry.gitlab.com/hassiweb-programming/docker-rtl-sdr/rtl-sdr:1.0