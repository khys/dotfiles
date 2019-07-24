# dotfiles

## Usage
```
$ ln -sf ~/Documents/dotfiles/.bash_profile ~/.bash_profile
$ ln -sf ~/Documents/dotfiles/.inputrc ~/.inputrc
$ ln -sf ~/Documents/dotfiles/.gitignore_global ~/.gitignore_global
$ ln -sf ~/Documents/dotfiles/.gitconfig ~/.gitconfig
$ ln -sf ~/Documents/dotfiles/.vimrc ~/.vimrc
$ ln -sf ~/Documents/dotfiles/.tmux.conf ~/.tmux.conf
$ ln -sf ~/Documents/dotfiles/config ~/.ssh/config
```

## Bash-it
```
$ git clone --depth=1 git@github.com:Bash-it/bash-it.git ~/.bash_it
```

- Personalized Config
```
$ ~/.bash_it/install.sh --no-modify-config
```

- Default Config
```
$ ~/.bash_it/install.sh
$ vi ~/.bash_profile
    export BASH_IT_THEME='pure'
```

## Tmux Plugin Manager
```
$ git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
```
