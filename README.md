# dotfiles
my dotfile repo

# Install guide
```
$   cd $HOME
$   git clone https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
$   ./install.sh
```

# Generate secrets dotfile
I wanted to keep all secrets in a separate dotfile and I obviously don't want to put that on GitHub. This can be done after running `install.sh`:
```
$   touch $HOME/.dotfiles/.secrets
$   echo "EXAMPLE_TOKEN=1234321" >> $HOME/.dotfiles/.secrets
$   source $HOME/.dotfiles/.secrets
```

# Revert to (mostly) a default configuration
Re-install incase of catastrophic mistakes
```
$   cd ~
$   git clone -b v1.0.1 https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
$   ./install.sh
```

# Information

## .bash_profile
.bash_profile is read and executed on interactive login shells. Should contain contents meant to be ran once.
## .bashrc
.bashrc is read and executed on non-login shells.
## .inputrc