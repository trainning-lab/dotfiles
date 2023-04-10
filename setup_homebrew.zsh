#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -s "https://get.sdkman.io" | bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash


brew install --cask httpie
brew install --cask bat


brew install --cask --no-quarantine google-chrome

brew install --cask --no-quarantine visual-studio-code
brew install --cask --no-quarantine intellij-idea
brew install --cask --no-quarantine miro
brew install --cask --no-quarantine rectangle
brew install --cask --no-quarantine postman
brew install --cask --no-quarantine drawio
brew install --cask --no-quarantine alfred
brew install --cask --no-quarantine docker
#brew install --cask iterm2
