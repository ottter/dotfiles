#!/usr/bin/bash

DOTFILE_ARGS=$(getopt -o ab --long ansible,bash -- "$@")

if [ $# -eq 0 ]; then
  ./install.sh --bash
  exit 0
fi

eval set -- "$DOTFILE_ARGS"

while [ : ]; do
  case "$1" in
    -a | --ansible)
      echo "ansible"
      exit 0
      ;;
    -b | --bash)
      ./.dotfiles/installer/bash-install.sh
      exit 0
      ;;
    --)
      shift;
      break
      ;;
    ?)
      echo "other"
      exit 1
      ;;
  esac
done