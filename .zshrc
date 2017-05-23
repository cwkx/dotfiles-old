# setup zsh with custom theme
ZSH_CUSTOM=$HOME/repos/zsh
ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="agnos"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="false"
plugins=(git)

# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

export VISUAL=vim
export EDITOR="$VISUAL"

alias l="ls -l"
alias web="vimb"

eval $(dircolors ~/.dircolors)

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
