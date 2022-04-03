#!/usr/bin/bash

for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
        rsync -aR --checksum $FILE ~ && source $FILE 2> /dev/null
        echo "Placing ${FILE:2}"
done

unset FILE
