#!/bin/bash

basedir=$(cd `dirname $0`; pwd)

if [ `id -u` -ne 0 ]; then
	echo "Not root user. Please run as root"
	exit 0
fi
#: << EOF
cp -r $basedir/.vim ~/
cp $basedir/.vimrc ~/
cp $basedir/gitconfig.~ ~/.gitconfig
cp $basedir/gitconfig.etc /etc/gitconfig
cp $basedir/git-completion.bash ~/.git-completion.bash

source ~/.git-completion.bash
echo "source ~/.git-completion.bash" >> ~/.bashrc
#EOF
