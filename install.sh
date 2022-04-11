#!/usr/bin/bash

for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
        rsync -aR --checksum $FILE ~ && source $FILE 2> /dev/null
        echo "Placing dotfile: ${FILE:2}"
done

unset FILE


# Run-once common package installer script
if [ -f ./.dotfiles/apps.sh ]; then
	echo -e "\n" && sh ./.dotfiles/apps.sh
fi