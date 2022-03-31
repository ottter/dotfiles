# dotfiles
my dotfile repo

# Install guide
```
$   cd ~
$   git clone https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
$   ./install.sh
```

# Revert to (mostly) a default configuration
Re-install incase of catastrophic mistakes
```
$   cd ~
$   git clone -b v1.0.0 https://github.com/ottter/dotfiles.git && cd "$(basename "$_" .git)"
$   ./install.sh
```

# Information

## .bash_profile
.bash_profile is read and executed on interactive login shells. Should contain contents meant to be ran once.
## .bashrc
.bashrc is read and executed on non-login shells.
## .inputrc