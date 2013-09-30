# Set up a file symlink to point to a profile file in this repo.
# This will allow the symlink to automatically pick up changes.
# Call this script on the command line as:
#    bash install_symlink.sh (-v | -b) [-o]
# -v specifies vimrc
# -b specifies bash_profile
# -o will specify _home profile instead of _work profile for bash_profile

#!/bin/bash

VIM_MODE='-v'
BASH_MODE='-b'
BASH_ENV='-o'
SYM_LINK="$HOME/."

if [ "$1" == $VIM_MODE ] ; then
    echo 'Setting vimrc link...'
    FILE_NAME='vimrc'
    REPO_FILE=$FILE_NAME
else
    echo 'Setting bash_profile link...'
    FILE_NAME='bash_profile'
    if [ "$2" == $BASH_ENV ] ; then
        echo "$BASH_ENV flag set, using home mode."
        REPO_FILE="${FILE_NAME}_home"
    else
        echo "No $BASH_ENV flag set, using work mode."
        REPO_FILE="${FILE_NAME}_work"
    fi
fi

echo 'Creating symlink...'

ln -sv $PWD/$REPO_FILE $SYM_LINK$FILE_NAME

RETURN_VAL=$?

if [ $RETURN_VAL -ne 0 ] ; then
    echo 'Error: no symlink created.'
else
    echo 'Symlink created.'
fi

exit $RETURN_VAL
