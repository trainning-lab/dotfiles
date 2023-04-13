#!/usr/bin/env zsh

printf "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; It's in the Brewfile.
echo "Enter superuser (sudo) password to edit /etc/shells"
echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null

echo "Enter user password to change login shell"
chsh -s '/usr/local/bin/zsh'