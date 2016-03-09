# Robin Pyon's Vim files

This includes .vimrc and all plugins which are managed with [Vundle](https://github.com/gmarik/vundle)

### Installation
---
Clone the repo

    git clone git://github.com/robinpyon/vimfiles ~/.vimfiles

Create symlinks

    ln -s ~/.vimfiles ~/.vim
    ln -s ~/.vimfiles ~/.config/nvim
    ln -s ~/.vimfiles/.vimrc.symlink ~/.vimrc
    ln -s ~/.vimfiles/.vimrc.symlink ~/.config/nvim/init.vim

Update submodule

    cd ~/vimfiles
    git submodule init
    git submodule update

Install all vim plugins managed by vundle

	(open vim)
	:NeoBundleInstall

### Environment
---

Mac OS X / iTerm2 / bash

### TODO:
---
