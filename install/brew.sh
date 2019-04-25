# Install homebrew
if ! command -v brew >/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle --file=- <<EOF
  tap 'caskroom/fonts'
  tap 'caskroom/versions'
  tap 'caskroom/cask'
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
  brew 'mongodb-community@4.0'
  brew 'reattach-to-user-namespace'
  brew 'sl'
  brew 'ssh-copy-id'
  brew 'stow'
  brew 'tmux'
  brew 'wget'
  brew 'yarn'
  brew 'youtube-dl'
  cask '1password'
  cask 'ableton-live-standard9'
  cask 'adobe-creative-cloud'
  cask 'alfred'
  cask 'atom'
  cask 'docker'
  cask 'dropbox'
  cask 'firefox'
  cask 'flux'
  cask 'google-chrome'
  cask 'google-chrome-canary'
  cask 'iina'
  cask 'imageoptim'
  cask 'itch'
  cask 'keybase'
  cask 'mamp'
  cask 'notion'
  cask 'postman'
  cask 'qlcolorcode'
  cask 'qlmarkdown'
  cask 'qlstephen'
  cask 'qlvideo'
  cask 'quicklook-csv'
  cask 'quicklook-json'
  cask 'robo-3t'
  cask 'sequel-pro'
  cask 'signal'
  cask 'skadi'
  cask 'sketch'
  cask 'slack'
  cask 'spectacle'
  cask 'spotify'
  cask 'steam'
  cask 'sublime-text'
  cask 'the-unarchiver'
  cask 'tower'
  cask 'transmit'
  cask 'visual-studio-code'
  cask 'vlc'
  cask 'webpquicklook'
  mas 'Cinch', id: 412529613
  mas 'Pages', id: 409201541
  mas 'Sip', id: 507257563
  mas 'Spark', id: 1176895641
  mas 'Tyme2', id: 1063996724
  mas 'Xcode', id: 497799835
EOF
