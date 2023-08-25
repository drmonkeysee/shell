local dir_prompt="%{$fg_bold[cyan]%}%1~%{$reset_color%}"
local ret_status="%(?..:%{$fg_bold[red]%}%?%{$reset_color%})"
PROMPT='$(virtualenv_prompt_info)${dir_prompt}${ret_status}∫ '

ZSH_THEME_VIRTUALENV_PREFIX="(%{$fg_bold[green]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%})"
