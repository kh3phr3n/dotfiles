# Common env variables
export VISUAL='nvim'
export EDITOR='nvim'
export GITPROMPT='1'
export HISTCONTROL='erasedups'

# Golang workspace
export GOPATH=$HOME/.go

# Run ssh-agent
[[ -d ~/.ssh ]] && eval $(ssh-agent)

# Load ~/.bashrc
[[ -f ~/.bashrc ]] && source ~/.bashrc

# Add Golang bin to PATH
[[ -d ~/.go/bin ]] && export PATH=~/.go/bin:$PATH

# Add Cargo bin to PATH
[[ -d ~/.cargo/bin ]] && export PATH=~/.cargo/bin:$PATH

