#!/bin/bash

## Git managed dotfiles setup script

# This script helps you set up a git managed dotfiles repository.

# The motivation for such is easiness on backing up your Linux box
# settings, tracking changes on your config files an being able to
# easily copy your settings across different machines, be it for
# restoring your set up, setting up a new machine or what have you.

# To use this script make sure you check the variables set in the
# top section of this file. Also make sure to check the second "for"
# loop as it contains a hardcoded value for the .config directory importing.
# Once you're happy with that, feel free to copy all the files you want
# to manage with gitto a suitable directory containing this script's file.

# It's important that this file is kept with as a hidden file (with a . preceding
# its name) as that avoids the "ls" command copying it over to your home directory.
# In the future I plan on improving this script even more, by removing the hardcoded
# value for ".config" or maybe even adding other features such as an interactive
# walk-through where the script will ask the user running it for the relevant directories
# and then store that in a settings file.

# This script was inspired by this tutorial (some of the contents of this script still maintain
# those of its original file, eg variable names):

# http://goo.gl/ZpdbI

# If you would like to try another alternative, check github's own page for dotfiles managing:

# http://dotfiles.github.io

# And remember, this script comes with no warranty, to the extent permitted by applicable law.
# It's licensed under the Creative Commons Attribution 4.0 International License.
# To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/.

##

## Variables
dir=~;
gitdir=/srv/git/dotfiles;             # dotfiles directory
olddir=~/dotfiles-backup;            # old dotfiles backup directory
files="$(ls $gitdir)";               # list of files/dirs to simlink to ~/
configfiles="$(ls $gitdir/.config)"; # list of files/dirs in .config

## Create Back up
echo "Creating $olddir for backup of any existing dotfiles in ~";
mkdir -p $olddir;
echo "...done";

## CD into current dotfiles dir
echo "Changing to the $dir directory";
cd $dir;
echo "...done";

## Back up old file and simlink new ones
for file in $files; do
    echo "Moving any existing dotfiles from $gitdir to $olddir";
    mv $dir/.$file $olddir;
    echo "Creating symlink to $file in home directory.";
    ln -s $gitdir/$file $dir/.$file;
done

## Same for files in .config
for file in $configfiles; do
    echo "Moving any existing dotfiles from $gitdir/.config to $olddir";
    mv $dir/.config/$file $olddir/.config;
    echo "Creating symlink to $file in home directory.";
    ln -s $gitdir/.config/$file $dir/.config/$file;
done

exit 0
