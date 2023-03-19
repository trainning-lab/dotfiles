echo "hello username $(date)"


# Set Variables



# Change ZSH options 



# Create Aliases
alias ls='ls -lAFh'
alias ll='ls'

# Custom the prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variables




#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"




# Write Handy Functions

function mkcd(){
 mkdir -p "$@" && cd "$_";
}


# Use ZSH plugins



# ... and Others
