export PS1='> '

shopt -s expand_aliases

alias vim="/Applications/nvim-osx64/bin/nvim"
alias v=vim
alias s="cd ~/fin-server"
alias c="cd ~/fin-web-client"
alias g="git"
alias skrr="exit"
alias profile="vim ~/.bash_profile"
alias ll="ls -lart"


set -o vi
export EDITOR=vim
bind TAB:menu-complete

bind '"jk":vi-movement-mode'
bind '"kj":vi-movement-mode'
bind '"kk":vi-movement-mode'


export PATH=${PATH}:/Users/Cooper/go/bin
export PATH=${PATH}:/usr/local/bin

export BASH_SILENCE_DEPRECATION_WARNING=1
