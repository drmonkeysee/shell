# Environment
unset LESS

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if command -v pyenv 1>/dev/null 2>&1; then
	eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then
	eval "$(pyenv virtualenv-init -)";
fi
eval "$(pyenv init -)"

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
alias py3v='pyenv activate py3v'
alias pysr='pyenv activate search'
alias pysp='pyenv activate startpage'
alias pycl='pyenv activate channel-leasing'
alias pybds='pyenv activate bds'
alias pydpl='pyenv activate dpl'
if [ -f "${HOME}/.shell_aliases" ] ; then
	source "${HOME}/.shell_aliases"
fi

# Functions
aws-check () {
	aws sts get-caller-identity
}
aws-sso () {
	aws sso login --profile default
}
