# Common env variables
export VISUAL='vim'
export EDITOR='vim'

# Set brew environment variables
[[ -d /opt/homebrew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# Load ~/.zshrc
[[ -f ~/.zshrc ]] && source ~/.zshrc

