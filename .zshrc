# XON flow control
[[ -x /bin/stty ]] && stty -ixon

# Custom aliases
[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases

# Set starship prompt
[[ -x /opt/homebrew/bin/starship ]] && eval "$(starship init zsh)"

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

