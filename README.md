# dotfiles

My dotfile repo. I'm not really sure why anyone else would want to straight up install this, but it's relatively
 unobtrusive for standard, uncustomized installs. Of course it will overwrite what you already have so be careful.
 **Ansible install is the most supported installation method**, but I am toying around with a bash script that will
 also be able to handle it. They are not going to be kept aligned, and may be periodically broken.

Install script will do the following:

- Copy all files in to place within $HOME, mostly to newly created ~/.dotfiles
- Create aliases for general Linux, Python, and more
- Install basic packages and ones useful to me (Ansible & Hugo)
- Apply custom git config

## Install guide

    cd $HOME
    git clone https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
    ./install.sh

## Generate secrets dotfile

I wanted to keep all secrets in a separate dotfile and I obviously don't want to put that on GitHub. This can be done
 before or after running `install.sh` without it being lost. This is because `install.sh` copys over files from the
 repo, overwriting existing and `.bashrc` runs all files in `$HOME/.dotfiles`.

    touch $HOME/.dotfiles/.secrets
    echo "EXAMPLE_TOKEN=1234321" >> $HOME/.dotfiles/.secrets
    source $HOME/.bashrc

## Revert to (mostly) a default configuration

Re-install incase of catastrophic mistakes

    cd ~
    git clone -b v1.0.1 https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
    ./install.sh

## Useful Ansible commands

Output facts: `ansible localhost -m setup`

## Sources

More or less people I stole ideas from. Thanks xo

- [https://github.com/webpro/dotfiles](webpro/dotfiles)
- [https://github.com/victoriadrake/dotfiles/tree/master](victoriadrake/dotfiles)
