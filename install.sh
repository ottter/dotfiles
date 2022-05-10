#!/usr/bin/bash

DOTFILE_ARGS=$(getopt -o ab --long ansible,bash -- "$@")

if [ $# -eq 0 ]; then
  ./install.sh --ansible
  exit 0
fi

eval set -- "$DOTFILE_ARGS"

while [ : ]; do
  case "$1" in
    -a | --ansible)
      sudo ansible-playbook playbook-dotfiles.yml -i hosts.ini
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
      echo ":)"
      exit 1
      ;;
  esac
done
