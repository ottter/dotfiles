#!/usr/bin/env bash

for FILE in $(find . -type f -name ".*" ! -path ".git/*" ); do
	rsync -R -a $FILE ~
done

unset FILE
