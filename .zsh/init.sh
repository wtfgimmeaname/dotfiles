# INIT ZSH

# Add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load configs
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load plugins
is_plugin() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/plugins/$name/$name.plugin.zsh \
    || test -f $base_dir/plugins/$name/_$name
}
for plugin ($plugins); do
  if is_plugin $ZSH_CUSTOM $plugin; then
    fpath=($ZSH_CUSTOM/plugins/$plugin $fpath)
  elif is_plugin $ZSH $plugin; then
    fpath=($ZSH/plugins/$plugin $fpath)
  fi
done

autoload -U compinit
compinit -i

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Load all of your custom configurations from custom/
for config_file ($ZSH_CUSTOM/*.zsh(N)) source $config_file

# Load the theme
if [ "$ZSH_THEME" = "random" ]
then
  themes=($ZSH/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]
  then
    if [ -f "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme" ]
    then
      source "$ZSH_CUSTOM/$ZSH_THEME.zsh-theme"
    else
      source "$ZSH/themes/$ZSH_THEME.zsh-theme"
    fi
  fi
fi

# In addition
add_path() { export PATH="$PATH:$1"; }
add_pre_path() { export PATH="$1:$PATH"; }

add_path /usr/local/bin:$HOME/.rvm/bin:$HOME/bin:$HOME/bin/tmux-1.5:$HOME/bin/pv-1.3.1
add_pre_path /usr/local/git/bin:$HOME/bin/vim73/src

source $ZSH/peek/peek.zsh # Add work stuff

# remove duplicate path entries and preserve PATH order
export PATH=$(echo $PATH | awk -F: '
{ start=0; for (i = 1; i <= NF; i++) if (!($i in arr) && $i) {if (start!=0) printf ":";start=1; printf "%s", $i;arr[$i]}; }
END { printf "\n"; } ')
