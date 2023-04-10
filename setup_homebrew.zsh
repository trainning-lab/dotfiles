#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --verbose 

echo "\n<<< ******************************  Others tools ******************>>>\n"

echo "\n<<< Installing SDK MAN>>>\n"
curl -s "https://get.sdkman.io" | bash

echo "\n<<< Installing NVM >>>\n"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
