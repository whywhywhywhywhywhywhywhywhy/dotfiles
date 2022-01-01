

 

[[ $- != *i* ]] && return



# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history


#set up completion 
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# aliases,variables and plugin setup
alias ls='ls --color=auto'
alias reb='doas reboot'
alias shut='doas poweroff'
alias xu='doas xbps-install -Su'
alias nnn='nnn -de'
alias way='dbus-launch --exit-with-session sway'
alias x='sx sh .xinitrc'
export PATH=/home/alex/.local/bin/:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/home/alex/.cargo/bin:$PATH

export EDITOR=micro
export BROWSER=firefox 
export MOZ_ENABLE_WAYLAND=1
export TERMINAL=foot
source ~/zsh-abbr/zsh-abbr.zsh
source  /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
 source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

eval "$(starship init zsh)"
