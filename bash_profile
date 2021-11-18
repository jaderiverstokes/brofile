export PS1='> '

shopt -s expand_aliases
source ~/.bash_env

alias vim="nvim"
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(/opt/homebrew/bin/brew shellenv)"



export GOOGLE_APPLICATION_CREDENTIALS='/Users/Cooper/finmix_dev_cred.json'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cooper/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/cooper/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/cooper/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/cooper/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export FZF_DEFAULT_COMMAND='ag -g ""'
