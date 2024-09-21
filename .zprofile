# Common env variables
export VISUAL='nvim'
export EDITOR='nvim'

# Golang workspace
export GOPATH=$HOME/.go

# Homebrew environment
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=30

# Set brew environment variables
[[ -d /opt/homebrew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# Add Golang bin to PATH
[[ -d ~/.go/bin ]] && export PATH=~/.go/bin:$PATH

# Load ~/.zshrc
[[ -f ~/.zshrc ]] && source ~/.zshrc

