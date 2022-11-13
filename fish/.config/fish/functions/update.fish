function update --description 'Get OS X Software Updates, App Store apps and Homebrew'
  sudo softwareupdate -i -a
  brew update
  brew upgrade --force
  brew cleanup
  mas upgrade
  npx browserslist@latest --update-db
end
