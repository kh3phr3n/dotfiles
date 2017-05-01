# File: ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Flow control
stty -ixon

# Tab completion
complete -cf man
complete -cf sudo

# Environment variables
export EDITOR='vim'
export TERM='xterm-256color'

# Python virtual envs
[[ -d ~/.venvs ]] && export VENVS=$HOME/.venvs

# Custom aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Git Auto completion
[[ -x /usr/bin/git ]] && source /usr/share/git/completion/git-completion.bash

# Colored man pages
man ()
{
    env \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_so=$'\e[38;5;246m' \
    LESS_TERMCAP_md=$'\e[01;38;5;74m' \
    LESS_TERMCAP_us=$'\e[04;38;5;146m' \
    man "$@"
}

# Bash Prompt (PS1)
setPrompt ()
{
    # Initialize PS1
    PS1=""
    # Regular colors
    local off='\[\e[0m\]'
    local red='\[\e[0;31m\]'
    local blue='\[\e[0;34m\]'
    local cyan='\[\e[0;36m\]'
    local green='\[\e[0;32m\]'
    local yellow='\[\e[0;33m\]'
    local purple='\[\e[0;35m\]'

    # Define '\w' colors
    [[ "$UID" -eq 0 ]] && local cwd=${red} || local cwd=${green}

    # Check-Add Python virtual environments
    [[ "$VIRTUAL_ENV" != "" ]] && PS1+="${cyan}(${VIRTUAL_ENV##*/})${off} "

    # Finalize PS1 (User, Directory, Prompt symbols: $/#)
    PS1+="${blue}\u${off} ${purple}in${off} ${cwd}\w${off} ${yellow}\\\$${off} "
}

PROMPT_COMMAND=setPrompt

