alias br='source ~/.bash_profile'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export PATH=~/.cabal/bin:$(brew --prefix)/bin:$PATH:~/personal/play:~/personal/retirement-simulator:/usr/texbin:~/se/dsc-cassandra-2.1.2/bin:/Users/simpleenergy/bughouse-ranking

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

alias cts="ctags --languages=scala -f tags -R --links=no"

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/python-environments
source /usr/local/bin/virtualenvwrapper.sh
