echo "hello username $(date)"


# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"



# Change ZSH options 



# Create Aliases
alias exa='exa -laFh --git'
alias ls='exa'
# alias ls='ls -lAFh'
alias ll='ls'
alias tree='ls --tree --level=2'
alias tree_all='ls --tree'
alias tree_level='f(){ ls --tree --level="$@";  unset -f f; }; f'
alias man=batman
# Custom the prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variables
# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"




#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"




# Write Handy Functions

function mkcd(){
 mkdir -p "$@" && cd "$_";
}


# Use ZSH plugins



# ... and Others
