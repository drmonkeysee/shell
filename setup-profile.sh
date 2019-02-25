#!/bin/sh

if [ "$1" == '-o' ] ; then
	echo 'Using home profile...'
	sh_profile=bash_profile_home
else
	echo 'Using work profile...'
	sh_profile=bash_profile_work
fi

echo 'Creating bash profile link...'
ln -sv "${PWD}/${sh_profile}" "${HOME}/.bash_profile"
exit_code=$?

echo 'Creating vimrc link...'
ln -sv "${PWD}/vimrc" "${HOME}/.vimrc"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi

echo 'Creating Sublime Text preference links...'
subldir="${HOME}/Library/Application Support/Sublime Text 3/Packages/User"

ln -sv "${PWD}/SublimeText/Preferences.sublime-settings" "${subldir}/Preferences.sublime-settings"
if [ $exit_code -eq 0 ] ; then exit_code=$? ; fi
ln -sv "${PWD}/SublimeText/Anaconda.sublime-settings" "${subldir}/Anaconda.sublime-settings"
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
