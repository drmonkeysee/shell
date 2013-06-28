Bash Profile and Scripts
=========================
This is simply my collection of bash-related files and scripts I've found useful.

I'm not primarily a Mac developer but now that I'm getting into it,
I've rapidly found that the command line gets a more rigorous workout than on Windows.
Since I'll be needing my bash profile to follow me around why not use GitHub as an online storage
location so I can pull it down to any machine I need.

install_profile.sh will create a symlink from ~/.bash\_profile to one of the profile files in this repo.
You can run it by typing:

    bash install_profile.sh [-h]
        -h will link to _home profile instead of _work
