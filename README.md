# VIM Setup

This repository is just a boilerplate for my .vim setup

install the setup by running the following commands (will clear the existing config)

```sh
rm -rf ~/.vim ~/.vimrc
git clone remote add origin https://github.com/oli77za/VimSetup.git ~/.vim
cd ~/.vim
git submodule foreach git pull origin master
ln -sf ~/.vim/.vimrc ~.vimrc
```


