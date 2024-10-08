# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# XON flow control
[[ -x /usr/bin/stty ]] && stty -ixon

# Custom aliases
[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

# Git prompt
[[ ${GITPROMPT} != 0 ]] && source /usr/share/git/completion/git-prompt.sh

# Colored man pages
man()
{
    env \
    GROFF_NO_SGR=1 \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_so=$'\e[38;5;8m' \
    LESS_TERMCAP_md=$'\e[01;38;5;12m' \
    LESS_TERMCAP_us=$'\e[04;38;5;14m' \
    man "$@"
}

# Bash Prompt (PS1)
setPrompt()
{
    # Initialize PS1
    PS1=''
    # Regular colors
    local off='\[\e[0m\]'
    local red='\[\e[0;31m\]'
    local blue='\[\e[0;34m\]'
    local cyan='\[\e[0;36m\]'
    local green='\[\e[0;32m\]'
    local yellow='\[\e[0;33m\]'
    local purple='\[\e[0;35m\]'

    # Check Git branch
    [[ ${GITPROMPT} != 0 ]] && local branch=$(__git_ps1 ":%s")
    # Check Python virtual environments
    [[ ${VIRTUAL_ENV} != "" ]] && PS1+="${cyan}(${VIRTUAL_ENV##*/})${off} "
    # Finalize PS1 (User, Directory, Branch, Prompt symbols: $/#)
    PS1+="${blue}\u${off} ${purple}in${off} ${green}\w${off}${cyan}${branch:-}${off} ${yellow}\\\$${off} "
}

PROMPT_COMMAND=setPrompt

