#!/bin/bash
groupmod -g $gid gajim
usermod -u $uid -g $gid gajim

chown -R gajim:gajim /home/gajim

exec su -ls "/bin/bash" -c "/usr/bin/gajim $ARGS" gajim
