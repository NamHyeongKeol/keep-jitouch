#!/bin/bash

daemonize() {
  ($1 &)
}

keepJitouch() {
  while [ true ]; do
    jitouchPid=$(pgrep Jitouch)
    if [ !$jitouchPid ]; then
      /private/var/folders/n8/8xrsct5577q6y6vybm3b0hfh0000gn/T/AppTranslocation/0350989D-B5A9-44F4-AA5D-81CEA7B69947/d/Jitouch.prefPane/Contents/Resources/Jitouch.app/Contents/MacOS/Jitouch
    fi
  done
}

daemonize keepJitouch
