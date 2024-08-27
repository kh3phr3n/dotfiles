# List directory contents
alias ls='ls -h --color=auto'
alias ll='ls -l'
alias la='ll -a'

# Interactive mode
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Fundamentals
alias :='cd ..'
alias vim='nvim'
alias sudo='sudo '

# Package utilities
alias pkg='pacman'
alias aur='auracle'

# Package information
alias show-pkg='pkg -Qo'
alias show-files='pkg -Ql'
alias show-local='pkg -Qi'
alias show-online='pkg -Si'

# Synchronize packages
alias refresh-pkgs='pkg -Sy'
alias upgrade-pkgs='pkg -Syu'

# Search packages
alias search-local='pkg -Qs'
alias search-online='pkg -Ss'

# Install packages
alias install-local='pkg -U'
alias install-online='pkg -S'

# Remove packages
alias remove='pkg -R'
alias remove-all='pkg -Rscn'
alias remove-cache='paccache -rk'

# Toggle screensaver
alias blank='xset s on +dpms'
alias noblank='xset s off -dpms'

# Network utilities
alias cm='connmanctl'
alias bt='bluetoothctl'
alias onl='ping -c 10 1.1.1.1'
alias http='http -s paraiso-dark'
alias pysrv='python -m http.server'

# Docker utilities
alias docker='sudo docker'
alias docker-compose='sudo docker-compose'

# Cleanup utilities
alias rmpac='DIFFPROG="nvim -d" pacdiff'
alias rmclh='rm ~/.bash_history && history -cw'
alias rmpyc='find . -name "*.pyc" -type f -delete'
alias rmdss='find . -name "*.DS_Store" -type f -delete'
alias rmvim='rm -rf ~/.cache/nvim ~/.config/nvim ~/.local/{share,state}/nvim'

# GRUB utilities
alias grubcfg='grub-mkconfig --output=/boot/grub/grub.cfg'
alias grubefi='grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'

# Update utilities
alias xread='xrdb ~/.Xresources'
alias mkcpio='mkinitcpio -p linux'
alias srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias mirrors='reflector -l 10 -p https --sort=rate --save=/etc/pacman.d/mirrorlist'
alias uptodate='sh -c "pacman -Syu && paccache -rk0 && DIFFPROG=\"nvim -d\" pacdiff"'
alias setxkbus='setxkbmap -layout us -option caps:swapescape,compose:rctrl,terminate:ctrl_alt_bksp'

