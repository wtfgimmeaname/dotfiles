# Built from the one and only oh my...
ZSH=$HOME/.zsh
ZSH_THEME="random"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_TITLE=true

bindkey -e # OMFG Don't fucking forget this ever again.

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(tmux)
source $ZSH/init.sh
