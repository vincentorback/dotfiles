# Install homebrew
if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file=- <<EOF
  tap 'homebrew/cask-fonts'
  tap 'homebrew/cask-versions'
  tap 'homebrew/cask'
  tap 'heroku/brew'
  tap 'homebrew/core'
  tap 'homebrew/bundle'
  tap 'mongodb/brew'
  brew 'bat'
  brew 'cmatrix'
  brew 'composer'
  brew 'coreutils'
  brew 'curl'
  brew 'direnv'
  brew 'git'
  brew 'findutils'
  brew 'fish'
  brew 'ffmpeg'
  brew 'git-flow'
  brew 'htop'
  brew 'openssl'
  brew 'httpie'
  brew 'heroku'
  brew 'mas'
  brew 'mongodb-community@4.4'
  brew 'reattach-to-user-namespace'
  brew 'ssh-copy-id'
  brew 'stow'
  brew 'trash'
  brew 'wget'
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
  cask 'sequel-ace'
  cask 'sketch'
  cask 'slack'
  cask 'spotify'
  cask 'sublime-text'
  cask 'the-unarchiver'
  cask 'tower'
  cask 'transmit'
  cask 'visual-studio-code'

  mas 'Cinch', id: 412529613
  mas 'Pages', id: 409201541
  mas 'Sip', id: 507257563
  mas 'Spark', id: 1176895641
  mas 'Tyme2', id: 1063996724
  mas 'Xcode', id: 497799835
EOF
