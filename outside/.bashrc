#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#aliases

alias explorer='pcmanfm'

export term=alacritty
export browser=firefox-developer-edition
export TERM=alacritty
export EDITOR=nvim

alias l='ll'
alias ls='lsd --color=auto'
alias ll='ls --color=auto -al'
alias lla='ll -R'
#package managers
alias pacman='sudo pacman'

#shortcuts
alias sizeof='sudo du -sh /var'
alias vim='nvim'
alias information='neofetch'
alias getpath='readlink -f'
alias paint='kolourpaint'
alias e='ranger'
alias smon='htop'
alias storage='ncdu'
alias i3conf='cd ~/.config/i3'
alias v='ncpamixer'
alias searchfor='grep -rnw . -e'
alias vimrc='cd ~/.config/nvim'
alias tree='lsd --tree'
