# .bash_profile

for DOTFILE in 'find ~/.dotfiles';
do
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE;


# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
