#!/usr/bin/env bash

for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
        rsync -aR $FILE ~
        echo "Copying ${FILE:2}"
done

unset FILE
