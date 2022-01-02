# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $- == *i* ]] && source ~/ble.sh/out/ble.sh --noattach
# actual bash configuration starts here 
eval "$(starship init bash)"
alias ls='ls --color=auto'
alias ls='ls --color=auto'
alias reb='doas reboot'
alias shut='doas poweroff'
alias xu='doas xbps-install -Su'
alias xO='doas xbps-remove -O'
alias xo='doas xbps-remove -o'
alias nnn='nnn -de'
alias tm='tmux'
export PATH=/home/alex/.local/bin/:$PATH
export PATH=/home/alex/.local/bin/statusbar/:$PATH
export PATH=/usr/local/bin:$PATH
export EDITOR=micro
export TERMINAL=foot
export BROWSER=firefox
# Write the following line at the bottom of .bashrc
[[ ${BLE_VERSION-} ]] && ble-attach

