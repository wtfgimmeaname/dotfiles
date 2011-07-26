# load bashrc
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Path
export PATH=/usr/local/bin:~/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

