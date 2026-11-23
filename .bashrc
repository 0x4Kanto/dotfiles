[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=20000

shopt -s histappend

shopt -s autocd
shopt -s checkwinsize

alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'

alias update='sudo pacman -Syu'
alias grubcfg='sudo mkinitcpio -P'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias cls='clear'
alias df='df -h'
alias free='free -h'

alias update='sudo pacman -Syyu'
alias grbcfg='sudo mkinitcpio -P'

alias logisim='java -jar /home/i386/Downloads/logisim.jar &'


# DXVK
export DXVK_HUD=0
export DXVK_LOG_LEVEL=none
export DXVK_HUD=fps, frametimes
PS1='[\u@\h \W]\ '
