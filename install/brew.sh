# Install homebrew
if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file=- <<EOF
  tap 'heroku/brew'
  tap 'homebrew/bundle'
  tap 'homebrew/cask-fonts'
  tap 'homebrew/cask-versions'
  tap 'homebrew/cask'
  tap 'homebrew/core'
  tap 'mongodb/brew'

  brew 'bat'
  brew 'cmatrix'
  brew 'composer'
  brew 'coreutils'
  brew 'curl'
  brew 'direnv'
  brew 'ffmpeg'
  brew 'findutils'
  brew 'fish'
  brew 'git-flow'
  brew 'git'
  brew 'heroku'
  brew 'htop'
  brew 'httpie'
  brew 'mas'
  brew 'mongodb-community@4.4'
  brew 'nodenv'
  brew 'openssl'
  brew 'reattach-to-user-namespace'
  brew 'ssh-copy-id'
  brew 'starship'
  brew 'stow'
  brew 'wget'
  brew 'yarn'
  brew 'youtube-dl'

  cask '1password'
  cask 'alt-tab'
  cask 'backblaze'
  cask 'firefox'
  cask 'iina'
  cask 'imageoptim'
  cask 'kitty'
  cask 'mamp'
  cask 'notion'
  cask 'rectangle'
  cask 'postman'
  cask 'sequel-ace'
  cask 'sketch'
  cask 'slack'
  cask 'the-unarchiver'
  cask 'tidal'
  cask 'tower'
  cask 'transmit'
  cask 'visual-studio-code'

  mas 'Pages', id: 409201541
  mas 'Sip', id: 507257563
  mas 'Spark', id: 1176895641
  mas 'Tyme2', id: 1063996724
  mas 'Xcode', id: 497799835
EOF
