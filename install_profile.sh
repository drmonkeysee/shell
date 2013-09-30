# Set up a file symlink to point to a profile file in this repo.
# This will allow the symlink to automatically pick up changes.
# Call this script on the command line as:
#    bash install_symlink.sh (-v | -b) [-o]
# -v specifies vimrc
# -b specifies bash_profile
# -o will specify _home profile instead of _work profile for bash_profile

#!/bin/bash

INPUT_FLAG='-o'
PROFILE_PREFIX="$PWD/bash_profile_"
SYM_LINK="$HOME/.bash_profile"

if [ "$1" == $INPUT_FLAG ] ; then
    echo "$INPUT_FLAG flag set, using home mode."
    SUFFIX='home'
else
    echo "No $INPUT_FLAG flag set, using work mode."
    SUFFIX='work'
fi

echo 'Creating bash profile symlink...'

ln -sv $PROFILE_PREFIX$SUFFIX $SYM_LINK

RETURN_VAL=$?

if [ $RETURN_VAL -ne 0 ] ; then
    echo 'Error: no symlink created.'
else
    echo 'Symlink created.'
fi

exit $RETURN_VAL
