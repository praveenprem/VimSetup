# VIM Setup

This repository is just a boilerplate for my .vim setup

## Installing

install the setup by running the following commands (will clear the existing config)

```sh
rm -rf ~/.vim ~/.vimrc
git clone git@github.com:praveenprem/VimSetup.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
cd bundle/YouCompleteMe
./install.sh
ln -sf ~/.vim/.vimrc ~.vimrc
```

## Updating
Update by pulling from GIT and updating recursively all submodules. YouCompleteMe might need to be re-compiled, so, wort recompiling anyway
```sh
cd .vimrc
git pull origin master
git submodule update --init --recursive
cd bundle/YouCompleteMe
./install.sh
```

