function update --description 'Get OS X Software Updates and update Homebrew, mas, and npm packages'
  sudo softwareupdate -i -a
  xcode-select --install
  brew update
  brew upgrade
  brew cleanup
  mas upgrade
  npm install npm -g
  npm update -g
end
