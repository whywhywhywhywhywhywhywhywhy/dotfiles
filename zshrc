# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

pfetch
# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh/history

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Created by newuser for 5.8
alias ls='ls --color=auto'
alias reb='doas reboot'
alias shut='doas shutdown -P now'
alias xu='doas xbps-install -Su'
alias xO='doas xbps-remove -O'
alias xo='doas xbps-remove -o'
alias nnn='nnn -de'
alias tm='tmux'
export PATH=/home/alex/.local/bin/:$PATH
export PATH=/home/alex/.local/bin/statusbar/:$PATH
export PATH=/usr/local/bin:$PATH
export EDITOR=micro
export TERMINAL=alacritty
export BROWSER=firefox
source ~/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/alex/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source  /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
