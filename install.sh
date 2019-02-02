#!/usr/bin/env bash
gitdir=$(ls -a | grep ".git")
if [[ $gitdir == "" ]];
then 
    echo the current directory is not a git res
    exit 1
fi
luacheck_path=$(which luacheck)

if [[ $luacheck_path == "" ]];
then
    echo luacheck is not avaiable!
    exit 1
fi
tmp_dir=TMP_$RANDOM
git clone https://github.com/yfge/lua-git-hooks.git  $tmp_dir
cp ./$tmp_dir/luacheck_rc ./.luacheckrc
cp ./$tmp_dir/hooks/pre-commit ./.git/hooks/pre-commit
rm -rf $tmp_dir
