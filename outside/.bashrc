#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#aliases

alias explorer='nautilus'

# export applications=/home/g/Downloads/Applications
export UNI=/home/g/Docs/2022-1
export LIN=/home/g/Docs/links_baby
export JAVA_HOME="/usr/lib/jvm/java-18-openjdk"

export term=alacritty
export browser=firefox-developer-edition
export TERM=alacritty
export EDITOR=nvim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8


alias l='ll'
alias ls='lsd --color=auto'
alias ll='ls --color=auto -al'
alias lla='ll -R'
alias lld='lsd -la --ignore-config --config-file='~/.config/lsd/config-date.yaml''
#package managers
alias pacman='sudo pacman'

#shortcuts
alias aquarium='asciiaquarium'
alias cal='cal --monday'
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
exec zsh
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
. "$HOME/.cargo/env"
