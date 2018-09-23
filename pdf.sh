#!/bin/bash
RED='\033[0;31m'
L_RED='\033[1;31m'
ORANGE='\033[0;33m'
CYAN='\033[0;36m'
BLUE='\033[0;34m'
NC='\033[0m'
if [[ $# -ge 1 ]]; then
    for file in $@; do
      if [[ $file =~ [a-zA-Z0-9]*.pdf ]]; then
        echo "Opening $file..."
        okular $file &
      elif [[ -d $file ]]; then
        echo -e "${L_RED}Error!${NC}\n${CYAN}$file is a directory${NC}"
      elif [[ ! -f $file ]]; then
        echo -e "${L_RED}Error!${NC}\n${RED}$file  is not a file${NC}"
      else
        echo -e "${L_RED}Error!${NC}\n${RED}$file not a PDF file${NC}"
    fi
  done
elif [[ $# -le 1 ]]; then
  echo -e "${L_RED}Syntax error${NC}\nUse as ${ORANGE}pdf${NC} ${RED}files...${NC}"
fi
