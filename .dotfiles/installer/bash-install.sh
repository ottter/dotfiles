#!/usr/bin/bash

APPINSTALL_LOC="./.dotfiles/installer/apps.sh"

# Move all dotfiles to proper location
for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
  rsync -aR --checksum $FILE ~ && source $FILE 2> /dev/null
  echo "Placing dotfile: ${FILE:2}"
done

# Run-once common package installer script
if [ -f $APPINSTALL_LOC ]; then
	echo -e "\n" && sh $APPINSTALL_LOC
fi

unset APPINSTALL_LOC
unset FILE