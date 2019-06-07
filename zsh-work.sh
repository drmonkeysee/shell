# Environment
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.3.2/libexec

# Aliases
alias bbe='open -a /Applications/BBEdit.app'
alias gcm='open -a /Applications/Google\ Chrome.app'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias pyv='source venv/bin/activate'
alias omv="source ${HOME}/Documents/omvenv/bin/activate"
alias om3v="source ${HOME}/Documents/om3venv/bin/activate"
alias py3v="source ${HOME}/Documents/py3venv/bin/activate"
if [ -f "${HOME}/.shell_aliases" ] ; then
	source "${HOME}/.shell_aliases"
fi
