if  [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  /bin/bash ~/sx.sh
fi
