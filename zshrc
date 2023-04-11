echo "hello zshrc $(date)"


# Set Variables
# Syntax highlight for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"


# Change ZSH options 



# Create Aliases
alias exa='exa -laFh --git'
alias ls='exa'
# alias ls='ls -lAFh'
alias ll='ls'
alias tree='ls --tree --level=2'
alias tree_all='ls --tree'
# shellcheck disable=SC2142
alias tree_level='f(){ ls --tree --level="$@";  unset -f f; }; f'
# Custom the prompt(s)
# shellcheck disable=SC2034
PROMPT='
%1~ %L %# '

# shellcheck disable=SC2034
RPROMPT='%*'


# Write Handy Functions

function mkcd(){
 mkdir -p "$@" && cd "$_" || exit;
}

function exists() {
  command -v $1 >/dev/null 2>&1;
}


# Use ZSH plugins



# ... and Others
