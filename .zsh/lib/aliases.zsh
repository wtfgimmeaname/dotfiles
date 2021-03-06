alias ls='ls -h'
alias la='ls -lah'
alias ll='ls -lh'
alias top='top $TOP_OPTIONS'
alias topme='top -u dustin'
alias ..='cl ..'
alias resource="source ~/.zshrc"

# Config shortcuts
alias vimrc="vim ~/.vimrc"
alias vimdr="vim ~/.vim/"
alias zshrc="vim ~/.zshrc"
alias zshdr="vim ~/.zsh/"

#Git aliai
alias g='git'
alias gst='git status'
alias ga='git add'
alias gap='git add --patch'
alias gc='git commit'
alias gcam='gc --amend'
alias gpl='git pull'
alias gph='git push'
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
alias grmrem="git branch -r --merged master | sed 's/ *origin\///' | grep -v 'master$' | xargs -I% git push origin :%"

alias iphone='open /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'
alias mydict='echo /usr/share/dict/words'

alias startmongo='mongod run --config /usr/local/Cellar/mongodb/2.0.2-x86_64/mongod.conf'
alias startmongodemon='mongod --fork --logpath /usr/local/var/log/mongodb/output.log --config /usr/local/Cellar/mongodb/2.0.2-x86_64/mongod.conf'
