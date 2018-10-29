# Search | List
alias gr='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ll -a'

# Interactive mode
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# Disk utilities
alias df='df -h'
alias du='du -h'
alias ds='du -s'

# Package utilities
alias pkg='pacman'
alias aur='cower -vc'

# Package information
alias show-aur='aur -i'
alias show-pkg='pkg -Qo'
alias show-files='pkg -Ql'
alias show-local='pkg -Qi'
alias show-online='pkg -Si'

# Install packages
alias install-local='pkg -U'
alias install-online='pkg -S'

# Search packages
alias search-aur='aur -s'
alias search-local='pkg -Qs'
alias search-online='pkg -Ss'

# Update and Upgrade system
alias update-aur='aur -u'
alias update-system='pkg -Sy'
alias upgrade-system='pkg -Syu'

# Remove packages
alias remove='pkg -R'
alias remove-all='pkg -Rscn'
alias remove-cache='paccache -rk'

# Toggle screensaver
alias blank='xset s on +dpms'
alias noblank='xset s off -dpms'

# Network utilities
alias ipi='curl ipinfo.io/ip'
alias www='python -m http.server'
alias http='http -s paraiso-dark'

# Cleanup utilities
alias rmclh='history -cw'
alias rmpac='DIFFPROG="nvim -d" pacdiff'
alias rmpyc='find . -name "*.pyc" -type f -delete'
alias rmdss='find . -name "*.DS_Store" -type f -delete'

# Sysadmin utilities
alias nv='nvim'
alias sudo='sudo '
alias trim='fstrim -av'
alias xread='xrdb ~/.Xresources'
alias mkcpio='mkinitcpio -p linux'
alias srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias mirrors='reflector -l 10 -p https --sort=rate --save=/etc/pacman.d/mirrorlist'

# GRUB utilities
alias grubcfg='grub-mkconfig --output=/boot/grub/grub.cfg'
alias grubefi='grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'

