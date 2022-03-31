#!/usr/bin/bash

for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
        rsync -aR $FILE ~ && source $FILE
        echo "Placing ${FILE:2}"
done

unset FILE
