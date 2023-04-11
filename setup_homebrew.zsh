#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"
if exists brew; then
  echo " brew exists, skipping install"
else
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose 

printf " \n<<< ******************************  Others tools ******************>>>\n "

echo "\n<<< Starting SDK MAN Setup >>>\n"
if exists sdk; then
  echo " sdk exists, skipping install"
else
  echo "sdk doesn't exists, continuing with install"
  curl -s "https://get.sdkman.io" | bash
fi

echo "\n<<< Installing NVM >>>\n"
if exists nvm; then
  echo " nvm exists, skipping install"
else
  echo "nvm doesn't exists, continuing with install"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
fi