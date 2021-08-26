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
alias nv='nvim'
alias sudo='sudo '

# Package utilities
alias pkg='pacman'
alias aur='auracle'

# Package information
alias show-pkg='pkg -Qo'
alias show-files='pkg -Ql'
alias show-local='pkg -Qi'
alias show-online='pkg -Si'

# Install packages
alias install-local='pkg -U'
alias install-online='pkg -S'

# Search packages
alias search-local='pkg -Qs'
alias search-online='pkg -Ss'

# Update system
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
alias cm='connmanctl'
alias bt='bluetoothctl'
alias onl='ping -c 10 1.1.1.1'
alias http='http -s paraiso-dark'

# Webdev utilities
alias sf='php bin/console'
alias sft='php bin/phpunit'
alias pysrv='python -m http.server'
alias phpsrv='php -S localhost:8000'
alias sqlsrv='ssh -L 3306:127.0.0.1:3306'

# Cleanup utilities
alias rmpac='DIFFPROG="nvim -d" pacdiff'
alias rmclh='rm ~/.bash_history && history -cw'
alias rmpyc='find . -name "*.pyc" -type f -delete'
alias rmdss='find . -name "*.DS_Store" -type f -delete'

# Update utilities
alias xread='xrdb ~/.Xresources'
alias mkcpio='mkinitcpio -p linux'
alias srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias mirrors='reflector -l 10 -p https --sort=rate --save=/etc/pacman.d/mirrorlist'

# GRUB utilities
alias grubcfg='grub-mkconfig --output=/boot/grub/grub.cfg'
alias grubefi='grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB'

