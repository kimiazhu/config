#! /bin/sh
#
# config.sh
# Copyright (C) 2018 ZHU HAIHUA <kimiazhu@gmail.com>
#
# Distributed under terms of the MIT license.
#
# 执行此脚本将会备份现有的SpaceVim配置，并用这里的配置文件来重新配置SpaceVim

if [ -f ~/.SpaceVim/vimrc ]; then
  mv ~/.SpaceVim/vimrc ~/.SpaceVim/vimrc.bak
fi

ln -s ~/Development/config/SpaceVim/SpaceVim/vimrc ~/.SpaceVim/vimrc

if [ -f ~/.SpaceVim.d/init.toml ]; then
  mv ~/.SpaceVim.d/init.toml ~/.SpaceVim.d/init.toml.bak
fi

ln -s ~/Development/config/SpaceVim/SpaceVim.d/init.toml ~/.SpaceVim.d/init.toml
