### UBER

#Global vars
export UBER_HOME="/usr/local/Cellar/uber-home/HEAD"
export PATH="$PATH:$(brew --prefix)/share/npm/bin:/usr/local/mysql/bin"
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib"

# Python env wrapper (workon)
source /usr/local/bin/virtualenvwrapper.sh
