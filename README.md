Bash Profile and Scripts
=========================
This is simply my collection of bash-related files and scripts I've found useful.

I'm not primarily a Mac developer but now that I'm getting into it, I've rapidly found that the command line gets a more rigorous workout than on Windows. Since I'll be needing my bash profile to follow me around why not use GitHub as an online storage location so I can pull it down to any machine I need.

install\_symlink.sh will create a symlink from the home directory to one of the profile files in this repo. You can run it by typing:

    bash install_symlink.sh (-v | -b) [-o]
        -v will install vimrc
        -b will install bash_profile
        -o will link to _home profile instead of _work
