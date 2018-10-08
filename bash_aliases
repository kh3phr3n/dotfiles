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

# Package utilities
alias pkg='pacman'
alias aur='cower -vc'

# Remove packages
alias remove='pkg -R'
alias remove-all='pkg -Rscn'

# Install packages
alias install-local='pkg -U'
alias install-online='pkg -S'

# Search packages
alias search-aur='aur -s'
alias search-local='pkg -Qs'
alias search-online='pkg -Ss'

# Package informations
alias show-aur='aur -i'
alias show-local='pkg -Qi'
alias show-online='pkg -Si'
alias which-files='pkg -Ql'
alias which-package='pkg -Qo'

# Update and Upgrade system
alias update-aur='aur -u'
alias update-system='pkg -Sy'
alias upgrade-system='pkg -Syu'

# Clean cache packages
alias clean-cache='paccache -rk1'
alias clean-cache-all='paccache -rk0'

# Cleanup
alias rmpyc='find . -name "*.pyc" -type f -delete'
alias rmdss='find . -name "*.DS_Store" -type f -delete'

# System administration
alias nv='nvim'
alias sudo='sudo '
alias trim='fstrim -av'
alias hclr='history -cw'
alias xread='xrdb ~/.Xresources'
alias mklinux='mkinitcpio -p linux'
alias request='http -s paraiso-dark'
alias noblank='xset s 0 0 dpms 0 0 0 -dpms'
alias srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias grubcfg='grub-mkconfig -o /boot/grub/grub.cfg'
alias grubefi='grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'
alias mirrors='reflector --sort=rate --latest=15 --protocol=https --save=/etc/pacman.d/mirrorlist'

