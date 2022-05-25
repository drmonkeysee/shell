# Environment
unset LESS
eval "$(/opt/homebrew/bin/brew shellenv)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Aliases
alias ls='ls -GF'
alias bbe='open -a /Applications/BBEdit.app'
alias gcm='open -a /Applications/Google\ Chrome.app'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias pyv='source venv/bin/activate'
alias py3v="source ${HOME}/Documents/Dev/Tools/py3venv/bin/activate"
