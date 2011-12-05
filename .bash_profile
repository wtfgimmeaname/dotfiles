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

# Path
export PATH=/usr/local/bin:~/bin:$PATH
add_path() { export PATH="$PATH:$1"; }
add_pre_path() { export PATH="$1:$PATH"; }

add_path $HOME/bin
add_path $HOME/.bash/bin
add_path $HOME/.bash/group/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# Scrubed hostname
# export HOSTNAME_SCRUB=`hostname | sed -e s/[^a-z0-9_]//g`

# Global variables
# Sometimes EDITOR require a complete path
export EDITOR=`which vim`
export SVN_EDITOR=`which vim`
export GIT_EDITOR=`which vim`
export PAGER=`which less`
export LS_COLORS="no=00:\
fi=00:\
di=01;36:\
ln=01;36:\
pi=40;33:\
so=01;35:\
do=01;35:\
bd=40;33;01:\
cd=40;33;01:\
or=40;31;01:\
ex=01;32:\
*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:\
*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:\
*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:\
*.ogg=01;35:*.mp3=01;35:*.wav=01;35:\
";
export GREP_OPTIONS='--color=auto'
export GIT_CEILING_DIRECTORIES=`echo $HOME | sed 's#/[^/]*$##'`  # Either /home(linux) or /Users(mac)
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export PROMPT_COMMAND='history -a'
export BROWSER='chrome'
export MAN_AUTOCOMP_FILE="/tmp/man_completes_`whoami`"
# export LANG='en_US.utf8'
if [ -f "$HOME/.inputrc" ]; then
  export INPUTRC="$HOME/.inputrc"
fi;

# Export the first java home we find
(which java &> /dev/null)
if [ $? -eq 0 ]; then
  JAVA_IN_PATH=`ls -la "\`which java\`" | sed s/.*-\>[^/]*// | sed s#/bin/java##`
fi;
for x in [ $JAVA_IN_PATH ]; do
  if [ -d $x ]; then
    export JAVA_HOME=$x
    break
  fi
done

# Export rails version
(which rails &> /dev/null)
if [ $? -eq 0 ]; then
  export RAILS_GEM_VERSION=`rails -v | awk '{print $2}'`
fi

# Compatability options
# The BSD sed on mac uses -E, while the GNU one on linux uses -r
(echo '' | sed -r /GG/g &> /dev/null)
if [ $? -eq "0" ]; then
  export SED_EXT='-r'
else
  export SED_EXT='-E'
fi

# GNU vs BSD ls for color
(ls --color=tty &> /dev/null)
if [ $? -eq 0 ]; then
  export LS_COLOR='--color=tty'
else
  export LS_COLOR='-G'
fi;

#GNU vs BSD top command line arguments
# Delay updates by 10 sec and sort by CPU
(man top 2>&1 | grep Linux> /dev/null)
if [ $? -eq 0 ]; then
  export TOP_OPTIONS='-c -d10'
else
  export TOP_OPTIONS='-s10 -ocpu'
fi;

# Options
shopt -s checkwinsize
shopt -s histappend   # Append to history rather than overwrite

#Aliases
alias c='clear'
alias ls='ls -h $LS_COLOR'
alias la='ls -lah $LS_COLOR'
alias ll='ls -lh $LS_COLOR'
alias ssh='ssh -A'
alias top='top $TOP_OPTIONS'
alias topme='top -u dustin'
alias rcopy='rsync -az --stats --progress --delete'
alias ..='cl ..'
alias trim_whitespace="sed -i 's/[ \t]*$//' "
alias sush='sudo ssh'

alias be='bundle exec'
alias bes='bundle exec spec'
#alias bx='bundle exec mongrel_rails start -p 3050'
#alias fbx='FAST=true bundle exec mongrel_rails start -p 3050'
#alias fbxd='FAST=true bundle exec mongrel_rails start --debug -p 3050'
alias ttr='touch tmp/restart.txt && echo "OOOooooooohhhh yea... touch it."'
alias dbg='touch tmp/debug.txt && touch tmp/restart.txt && echo "Go debug, young grasshopper -- rdebug -c"'
alias con='script/console'

alias g='git'
alias gst='git status'
alias ga='git add'
alias gap='git add --patch'
alias gc='git commit'
alias gsu='git submodule update'
alias gca='gc -a -m'
alias gcam='gc --amend'
alias gpl='git pull'
alias gph='git push'
alias gpp='gpl && gph'
alias gethead='git rev-parse HEAD'
alias gg='git grep'
alias gdf='git diff'
alias gdfc='git diff --cached'
alias gbr='git branch'
alias gcm='git checkout master'
alias gco='git checkout'
alias gsl='git stash list'
alias gss='git stash save'
alias gsa='git stash apply'
alias gsd='git stash drop'

alias glg='git log --graph --decorate --oneline'
alias gitv='git log -1 | head -1 | awk "{print \$2}"'
alias unmerged='vim $(gst | ack unmerged | cut -d : -f 2)'
# Auto completion
complete -cf sudo
complete -cf which
# Autocomplete ssh commands with the hostname
complete -W "$(echo `cat ~/.ssh/known_hosts 2> /dev/null | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

# Autocomplete man commands
function listmans_raw() {
  local manpath_func
  which manpath &> /dev/null
  if [ $? -eq 0 ]; then
    manpath_func='manpath'
  else
    manpath_func='man -W 2> /dev/null'
  fi;
  for dir in $($manpath_func | /usr/bin/tr ':' '\n'); do
    find "${dir}" ! -type d -name "*.*" 2>/dev/null | sed -e 's#/.*/##g' | sed -e 's#.[^.]*$##g' | sed -e 's#\.[0123456789].*##g'
  done
}
function regen_man_args() {
  listmans_raw | sort -u > $MAN_AUTOCOMP_FILE
}
function listmans() {
  if [ ! -f $MAN_AUTOCOMP_FILE ]; then
    regen_man_args
  fi;
  cat $MAN_AUTOCOMP_FILE
}
complete -W "$(listmans)" man

# RANDOM FUNCTIONS
function cl(){ cd "$@" && la; }

# Repeat a command N times.
function repeat() {
  local i max
  max=$1; shift;
  for ((i=1; i <= max ; i++)); do
    eval "$@";
  done
}

# Lets you ask a command.
# ask 'Do you party?' && echo "Cool story bro" || "Try it"
function ask() {
  echo -n "$@" '[y/n] ' ; read ans
  case "$ans" in
    y*|Y*) return 0 ;;
    *) return 1 ;;
  esac
}

#Simple blowfish encryption
function blow() {
  [ -z "$1" ] && echo 'Encrypt: blow FILE' && return 1
  openssl bf-cbc -salt -in "$1" -out "$1.bf"
}
function fish() {
  test -z "$1" -o -z "$2" && echo \
    'Decrypt: fish INFILE OUTFILE' && return 1
  openssl bf-cbc -d -salt -in "$1" -out "$2"
}

# Extract based upon file ext
function ex() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xvjf $1   ;;
      *.tar.gz)  tar xvzf $1   ;;
      *.bz2)     bunzip2 $1    ;;
      *.rar)     unrar x $1    ;;
      *.gz)      gunzip $1     ;;
      *.tar)     tar xvf $1    ;;
      *.tbz2)    tar xvjf $1   ;;
      *.tgz)     tar xvzf $1   ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.7z)      7z x $1       ;;
      *)         echo "'$1' cannot be extracted via >extract<" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Compress with tar + bzip2
function bz2 () {
  tar cvpjf $1.tar.bz2 $1
}

# Google the parameter
function google () {
  links http://google.com/search?q=$(echo "$@" | sed s/\ /+/g)
}

function myip () { 
 # GNU vs BSD hostname
 (hostname -i &> /dev/null)
  if [ $? -eq 0 ]; then
    echo `hostname -i`
  else
    echo `ipconfig getifaddr en0`
  fi;
}

# anyvi <file>
# run EDITOR on a script no matter where it is
function anyvi() {
  if [ -e "$1" ] || [ -f "$1" ]; then
    $EDITOR $1
  else
    $EDITOR `which $1`
  fi
}
complete -cf anyvi #autocomplete the anyvi command

# Grep for a process while at the same time ignoring the grep
function psgrep(){
  local OUTFILE=`mktemp /tmp/psgrep.XXXXX`
  ps awxxx > $OUTFILE
  grep $@ $OUTFILE
  rm $OUTFILE
}

# Set up git completion
source $HOME/.bash/git-completion.bash

#### PROMPT
source $HOME/.bash/term_colors
PROMPT_COLOR=$W
if [ ${UID} -eq 0 ]; then
  PROMPT_COLOR=$R
fi

# (1) The time shows when each command was executed, when I get back to my terminal
# (2) Git information really important for git users
# (3) Prompt color is red if I'm root
# (4) The last part of the prompt can copy/paste directly into an SCP command
# (5) Color highlight out the current directory because it's important
# (6) The export PS1 is simple to understand!
# (7) If the prev command error codes, the prompt '>' turns red
# FIX THIS CRAPZ
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
#export PS1='\h:\w$(__git_ps1 "\[\e[32m\][%s]\[\e[0m\]")$ '
export PS1="$N\t$W|"'$(__git_ps1 " (%s) ")'"$PROMPT_COLOR\u@\h$N:$MY\W$N"'$CURSOR_PROMPT '
export PROMPT_COMMAND='if [ $? -ne 0 ]; then CURSOR_PROMPT="^"; else CURSOR_PROMPT=" "; fi'

# remove duplicate path entries and preserve PATH order
export PATH=$(echo $PATH | awk -F: '
{ start=0; for (i = 1; i <= NF; i++) if (!($i in arr) && $i) {if (start!=0) printf ":";start=1; printf "%s", $i;arr[$i]}; }
END { printf "\n"; } ')

# Set up autojump; appends $PROMPT_COMMAND
#source $HOME/.bash/config/autojump.bash

#add other directories to path
#source $HOME/.bash/path_vars
#source $HOME/.ssh/bash_agent
