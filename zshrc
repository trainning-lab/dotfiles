# Custom the prompt(s)

export PROMPT='
%1~ %L %# '

export RPROMPT='%*'

# SET VARIABLES
# Syntax highlight for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH options 



# CREATE ALIASES
alias dotfiles='cd ~/.dotfiles'
alias exa='exa -laFh --git'
alias ls='exa'
alias ll='ls'

alias tree='ls --tree --level=2'
alias tree_all='ls --tree'


alias brew_save='brew bundle dump --force --describe'

alias cdd='cd ~/Documents'
alias cdw='cdd && cd workspace'

alias  trail='<<<${(F)path}'

# WRITE HANDY FUNCTIONS

function mk(){
 mkdir -p "$@" && cd "$_" || exit;
}

tree_level() { ls --tree --level="$*";  }

# Use ZSH plugins



# ... and Others
