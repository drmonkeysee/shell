local ret_status="%(?:%{$fg_bold[cyan]%}:%{$fg_bold[red]%})"
PROMPT='$(virtualenv_prompt_info)🐵:${ret_status}%c%{$reset_color%}∫ '

# NOTE: git vars taken from git-prompt, stash check taken from gitfast
function stash_status() {
	precmd_update_git_vars
	if [ -n "$__CURRENT_GIT_STATUS" ] ; then
		git rev-parse --verify --quiet refs/stash > /dev/null
		if [ $? -eq 0 ] ; then
			echo "%{$fg_bold[white]%}$%{$reset_color%}"
		fi
	fi
}
RPROMPT='$(git_super_status)$(stash_status)'

ZSH_THEME_VIRTUALENV_PREFIX="(%{$fg_bold[green]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%})"
