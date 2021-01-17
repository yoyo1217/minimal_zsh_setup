export ZSH="/home/vagrant/.oh-my-zsh"

ZSH_THEME="robbyrussell"

alias v="nvim"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    colored-man-pages

    )

source $ZSH/oh-my-zsh.sh

# function that remove a path from PATH
path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
path_remove ()  { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }

