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
abbr -a dc 'docker-compose'
abbr -a gs 'git status'
abbr -a gd 'git diff'
abbr -a gl 'git log'
abbr -a dmc 'docker-machine-connect'
abbr -a brewup 'brew update; and brew upgrade; and brew cleanup; and brew prune;'

# Editor
set -x EDITOR vscode

# Load secrets (like GITHUB_API_TOKEN)
source ~/.config/fish/secrets.fish

# Load direnv
eval (direnv hook fish)

# Nodenv
status --is-interactive; and source (nodenv init -|psub)

# `bat` defaults
set -x BAT_THEME 'GitHub'
set -x BAT_STYLE 'plain'
