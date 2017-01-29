#!/bin/bash
groupmod -g $gid gajim
usermod -u $uid -g $gid gajim

if [ -d /home/gajim/.config ]; then
  chown -R gajim:gajim /home/gajim/.config
fi

if [ -d /home/gajim/.local ]; then
  chown -R gajim:gajim /home/gajim/.local
fi

if [ -d /home/gajim/.cache ]; then
  chown -R gajim:gajim /home/gajim/.cache
fi


exec su -ls "/bin/bash" -c "/usr/bin/gajim $ARGS" gajim
