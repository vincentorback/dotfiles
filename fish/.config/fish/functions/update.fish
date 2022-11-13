function update --description 'Get OS X Software Updates, App Store apps and Homebrew'
  sudo softwareupdate -i -a
  xcode-select --install
  brew update
  brew upgrade
  brew cleanup
  mas upgrade
  npx browserslist@latest --update-db
end
