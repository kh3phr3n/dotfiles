# Environment variables
export VISUAL='nvim'
export EDITOR='nvim'
export GITPROMPT='1'
export HISTCONTROL='erasedups'

# Run ssh-agent
[[ -d ~/.ssh ]] && eval $(ssh-agent)

# Load ~/.bashrc
[[ -f ~/.bashrc ]] && source ~/.bashrc

