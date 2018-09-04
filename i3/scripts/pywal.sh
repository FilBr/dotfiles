#! /bin/bash
if [[ $# -eq 1 ]]; then
  if [[ $1 == "next" ]]; then
    wal -i ~/Pictures > /dev/null &
    ~/.local/bin/intellijpywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config > /dev/null &
    pic=$( cat $HOME/.cache/wal/wal )
    betterlockscreen -u $pic > /dev/null &
  fi
  exit 0
fi
if pidof -o %PPID -x "pywal.sh">/dev/null; then
        exit -1
fi
while true
do
  wal -i ~/Pictures > /dev/null &
  ~/.local/bin/intellijpywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config > /dev/null &
  pic=$( cat $HOME/.cache/wal/wal )
  betterlockscreen -u $pic > /dev/null
  sleep 10m
done
