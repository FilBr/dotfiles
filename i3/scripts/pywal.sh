#! /bin/bash
if pidof -o %PPID -x "pywal.sh">/dev/null; then
        exit -1
fi
while true
do
  wal -i ~/Pictures
  sleep 0.3s
  ~/.local/bin/intellijpywal/intellijPywalGen.sh ~/.IntelliJIdea2018.2/config
  sleep 10m
done
