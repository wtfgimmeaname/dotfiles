# Source global definitions
GLOBAL_BASH_DEF='/etc/bashrc'
if [ -f $GLOBAL_BASH_DEF ]
then
  source $GLOBAL_BASH_DEF
fi

# Load bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Construct Path
export PATH=/usr/local/bin:~/bin:$PATH
add_path() { export PATH="$PATH:$1"; }
add_pre_path() { export PATH="$1:$PATH"; }

# My bin, tmux, vim and git
add_path $HOME/bin
add_path $HOME/bin/tmux-1.5
add_pre_path $HOME/bin/vim73/src
add_pre_path /usr/local/git/bin

# Source global variables and aliases
source $HOME/.bash/globalvars
source $HOME/.bash/aliases
source $HOME/.bash/utils
source $HOME/.bash/gitcompletion
source $HOME/.bash/tmuxcommands
source $HOME/.bash/term_colors

# Options
shopt -s checkwinsize
shopt -s histappend   # Append to history rather than overwrite

# Auto completion -- Autocomplete ssh with hostname is the last one
complete -cf sudo
complete -cf which
complete -W "$(echo `cat ~/.ssh/known_hosts 2> /dev/null | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

# PROMPT
# (1) The time shows when each command was executed, when I get back to my terminal
# (2) Git information really important for git users
# (3) Prompt color is red if I'm root
# (5) Color highlight out the current directory because it's important
# (7) If the prev command error codes, the prompt '>' turns red

PROMPT_COLOR=$W
if [ ${UID} -eq 0 ]; then
  PROMPT_COLOR=$R
fi

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export PS1="$N\t$W|"'$(__git_ps1 " (%s) ")'"$PROMPT_COLOR\u@\h$N:$MY\W$N"'$CURSOR_PROMPT '
export PROMPT_COMMAND='if [ $? -ne 0 ]; then CURSOR_PROMPT="^"; else CURSOR_PROMPT=" "; fi'


# remove duplicate path entries and preserve PATH order
export PATH=$(echo $PATH | awk -F: '
{ start=0; for (i = 1; i <= NF; i++) if (!($i in arr) && $i) {if (start!=0) printf ":";start=1; printf "%s", $i;arr[$i]}; }
END { printf "\n"; } ')

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
