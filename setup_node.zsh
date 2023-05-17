#!/usr/bin/env zsh

printf "\n<<< Starting Homebrew Setup >>>\n"

# Node versions are managed with 'n', which is in the Brewfile.
# See zshrc for N_PREFIX variable.
# See zshenv for addition to PATH.
if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"

else
  echo "Installing Node & NPM with n..."
  n latest
fi
