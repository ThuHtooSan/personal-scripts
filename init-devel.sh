#!/bin/sh

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
NOCOLOR='\033[0m'

# Template Directory

# Replace the path if you have a different template directory
# or just want to use a custom directory
TEMPLATE_DIR=~/Templates

for i in $@
do
  ls ./$i > /dev/null 2>&1
  if [ $? -ne "0" ]; then

    ls ${TEMPLATE_DIR}/${i} > /dev/null 2>&1
    if [ $? -eq "0" ]; then

      cp -L ${TEMPLATE_DIR}/${i} ./ &&
      echo -e "${GREEN}Created $i using template.${NOCOLOR}"

      else
        echo -e "${RED}No template file available for $i ${NOCOLOR}"
        exit 2
    fi

    else
      echo -e "${RED}${i} already exists in this folder.${NOCOLOR}"
      exit 1
  fi
done
