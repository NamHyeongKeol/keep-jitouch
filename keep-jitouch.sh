#!/usr/local/bin/zsh

daemonize() {
  ($1 &)
}

keepJitouch() {
  echo asdf
  while [ true ]; do
    sleep 1;
    jitouchPid=$(pgrep Jitouch)
    if [ ! $jitouchPid ]; then
      #echo asdf;
      open /Library/PreferencePanes/Jitouch.prefPane
    fi
  done
}

daemonize keepJitouch
