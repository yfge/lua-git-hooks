#!/usr/bin/env bash
git init
tmp_dir=TMP_$RANDOM
git clone https://github.com/yfge/lua-git-hooks.git  $tmp_dir
cp ./$tmp_dir/luacheck_rc ./.luacheckrc
cp ./$tmp_dir/hooks/pre-commit ./.git/hooks/pre-commit
rm -rf $tmp_dir
