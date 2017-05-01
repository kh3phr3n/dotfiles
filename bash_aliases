# File: ~/.bash_aliases

# Search / List
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ll -a'

# Interactive
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# Utilities
alias df='df -h'
alias du='du -h'
alias ds='du -s'

# Pacman
alias pcm='pacman'
alias aur='cower -vc'

# Miscs
alias sudo='sudo '
alias hclear='history -c'

# Remove packages
alias remove='pcm -R'
alias remove-all='pcm -Rscn'

# Install packages
alias install-local='pcm -U'
alias install-online='pcm -S'

# Search packages
alias search-aur='aur -s'
alias search-local='pcm -Qs'
alias search-online='pcm -Ss'

# Packages informations
alias show-aur='aur -i'
alias show-local='pcm -Qi'
alias show-online='pcm -Si'
alias which-files='pcm -Ql'
alias which-package='pcm -Qo'

# Update and Upgrade system
alias update-aur='aur -u'
alias update-system='pcm -Sy'
alias upgrade-system='pcm -Syu'

# Clean cache packages (Caution)
alias clean-cache='pcm -Sc'
alias clean-cache-hard='pcm -Scc'

# System administration commands
alias trim='fstrim -av'
alias xread='xrdb ~/.Xresources'
alias mklinux='mkinitcpio -p linux'
alias srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias grubcfg='grub-mkconfig -o /boot/grub/grub.cfg'

# Cleanup
alias rmpyc='find . -name "*.pyc" -type f -delete'
alias rmdss='find . -name "*.DS_Store" -type f -delete'

