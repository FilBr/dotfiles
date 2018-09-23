#!/bin/bash
if [[ $# -eq 1 && (-f $1 || -d $1) ]]; then
  if [[ -f $1 ]]; then
    echo "Enter new name for file $1: "
    read newName
    mv $1 $newName
  elif [[ -d $1 ]]; then
    echo "Enter new name for directory $1: "
    read newName
    mv $1 $newName
  fi
elif [[ $# -ne 1 ]]; then
  RED='\033[0;31m'
  L_RED='\033[1;31m'
  CYAN='\033[0;34m'
  ORANGE='\033[0;33m'
  NC='\033[0m'
  echo -e "${L_RED}Syntax error${NC}\nUse as ${ORANGE}rename${NC} ${RED}file${NC}/${CYAN}directory${NC}"
elif [[ ! (-f $1 || -d $1) ]]; then
  echo "$1 doesn't exist"
fi
