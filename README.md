# dotfiles
My dotfile repo. I'm not really sure why anyone would want to straight up install this, but it's relatively unobtrusive for standard, uncustomized installs. Of course it will overwrite what you already have so be careful. 

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

# Sources
More or less people I stole ideas from. Thanks xo

* https://github.com/webpro/dotfiles
* https://github.com/victoriadrake/dotfiles/tree/master