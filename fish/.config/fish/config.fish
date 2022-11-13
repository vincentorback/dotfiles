# Install fundle
if not functions -q fundle
  eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'tuvistavie/fish-kubectl'
fundle plugin 'tuvistavie/fish-fastdir'
fundle init

# Paths
set -x PATH /bin $PATH
set -x PATH /sbin $PATH
set -x PATH /usr/bin $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH

# Abbreviations
abbr -a l 'ls'
abbr -a ll 'ls -l'
abbr -a la 'ls -la'
abbr -a gs 'git status'
abbr -a gd 'git diff'
abbr -a gl 'git log'
abbr -a brewup 'brew update; and brew upgrade; and brew cleanup; and brew prune;'

# Editor
set -x EDITOR vscode

# Load secrets (like GITHUB_API_TOKEN)
# source ~/.config/fish/secrets.fish

# Completions
kitty + complete setup fish | source

# Load direnv
eval (direnv hook fish)

# Nodenv
status --is-interactive; and source (nodenv init -|psub)

# Starship
eval (starship init fish)

# `bat` defaults
set -x BAT_THEME 'GitHub'
set -x BAT_STYLE 'plain'

# Android Studio
set --export ANDROID $HOME/Library/Android;
set --export ANDROID_HOME $ANDROID/sdk;
set -gx PATH $ANDROID_HOME/tools $PATH;
set -gx PATH $ANDROID_HOME/tools/bin $PATH;
set -gx PATH $ANDROID_HOME/platform-tools $PATH;
set -gx PATH $ANDROID_HOME/emulator $PATH

# set -x JAVA_HOME/bin $PATH;
# set --export JAVA_HOME /Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home;
# set -gx PATH $JAVA_HOME/bin $PATH;

fish_add_path /usr/local/opt/icu4c/bin
fish_add_path /usr/local/opt/icu4c/sbin

source /usr/local/opt/asdf/libexec/asdf.fish

alias php7='/Applications/MAMP/bin/php/php7.4.2/bin/php'
