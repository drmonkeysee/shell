# Environment
unset LESS
export PATH="/usr/local/sbin:$PATH"
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.4/libexec

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then
	eval "$(pyenv virtualenv-init -)";
fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias ls='ls -GF'
alias bbe='open -a /Applications/BBEdit.app'
alias gcm='open -a /Applications/Google\ Chrome.app'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias pyv='source venv/bin/activate'
alias omv="source ${HOME}/Documents/omvenv/bin/activate"
alias om3v="source ${HOME}/Documents/om3venv/bin/activate"
alias py3v='pyenv activate py3v'
alias pysr='pyenv activate search'
alias pysp='pyenv activate startpage'
if [ -f "${HOME}/.shell_aliases" ] ; then
	source "${HOME}/.shell_aliases"
fi
