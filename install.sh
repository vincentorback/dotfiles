#!/bin/sh

# Ask for the administrator password upfront
sudo -v

# Update existing `sudo` time stamp until `install` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Xcode command line tools
if ! command -v xcode-select -p >/dev/null; then
  xcode-select --install
fi

# Set osx settings
source install/osx.sh

# Install brew and casks
source install/brew.sh

# Set fish as the default shell
if ! fgrep -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells
fi

if [[ ! $SHELL = '/usr/local/bin/fish' ]]; then
  chsh -s /usr/local/bin/fish
fi

echo 'Install complete.'
