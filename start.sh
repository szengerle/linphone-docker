#!/bin/bash
XSOCK=/tmp/.X11-unix/X0
docker run -t -i \
  -v $XSOCK:$XSOCK \
  -v /dev/snd:/dev/snd \
  -v `pwd`/hosts:/etc/hosts \
  --lxc-conf='lxc.cgroup.devices.allow = c 116:* rwm' \
  --privileged \
  szengerle/linphone
