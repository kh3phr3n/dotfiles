# Common env variables
export VISUAL='vim'
export EDITOR='vim'

# Golang workspace
export GOPATH=$HOME/.go

# Set brew environment variables
[[ -d /opt/homebrew ]] && eval $(/opt/homebrew/bin/brew shellenv)

# Add Golang bin to PATH
[[ -d ~/.go/bin ]] && export PATH=~/.go/bin:$PATH

# Load ~/.zshrc
[[ -f ~/.zshrc ]] && source ~/.zshrc

