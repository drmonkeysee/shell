local ret_status="%(?:%{$fg_bold[cyan]%}:%{$fg_bold[red]%})"
PROMPT='$(virtualenv_prompt_info)🐵:${ret_status}%1~%{$reset_color%}∫ '

ZSH_THEME_VIRTUALENV_PREFIX="(%{$fg_bold[green]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%})"
