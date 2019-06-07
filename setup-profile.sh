#!/bin/sh

zsh_theme=drmonkeysee
zshrc="${HOME}/.zshrc"

if [ "$1" == '-o' ] ; then
	echo 'Using home profile...'
	zsh_theme_src=${zsh_theme}-home.zsh-theme
	zsh_settings="${PWD}/zsh-home.sh"
else
	echo 'Using work profile...'
	zsh_theme_src="${zsh_theme}-work.zsh-theme"
	zsh_settings="${PWD}/zsh-work.sh"
fi

echo 'Creating zsh theme link...'
ln -sv "${PWD}/${zsh_theme_src}" "${HOME}/.oh-my-zsh/themes/${zsh_theme}.zsh-theme"
exit_code=$?

echo 'Updating zshrc...'
sed -i .bak -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="drmonkeysee"/ ; s/^plugins=(.*$/plugins=(git git-prompt virtualenv)/' "$zshrc"
echo "
# Profile settings
source $zsh_settings
" >> "$zshrc"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi

echo 'Creating vimrc link...'
ln -sv "${PWD}/vimrc" "${HOME}/.vimrc"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi

echo 'Creating Sublime Text preference links...'
subldir="${HOME}/Library/Application Support/Sublime Text 3/Packages/User"

ln -sv "${PWD}/SublimeText/Preferences.sublime-settings" "${subldir}/Preferences.sublime-settings"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi

spacelangs=( 'C' 'C++' 'Objective-C' 'Python' )
for spacelang in ${spacelangs[@]} ; do
	ln -sv "${PWD}/SublimeText/Spaces.sublime-settings" "${subldir}/${spacelang}.sublime-settings"
	if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi
done
weblangs=( 'CSS' 'JavaScript' 'JSON' 'XML' 'YAML' )
for weblang in ${weblangs[@]} ; do
	ln -sv "${PWD}/SublimeText/Web.sublime-settings" "${subldir}/${weblang}.sublime-settings"
	if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi
done
ln -sv "${PWD}/SublimeText/HTML.sublime-settings" "${subldir}/HTML.sublime-settings"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi

echo 'Creating BBEdit text filter links...'
for textfilter in BBEdit/*.py ; do
	ln -sv "${PWD}/$textfilter" "${HOME}/Library/Application Support/BBEdit/Text Filters"
	if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi
done

exit $exit_code
