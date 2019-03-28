# dotfiles
repository for dotfiles(.vimrc and related files.)
assuming the installation of zsh

## installation
### install dein(https://github.com/Shougo/dein.vim)
1. `mkdir -p ~/.vim/dein`
        
2. `curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh`

3. `sh installer.sh ~/.vim/dein`

### install NeoBundle(https://github.com/Shougo/neobundle.vim)
1. `curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh`

2. `sh ./install.sh`

### oh-my-zsh
1. `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

### zsh-completion
1. https://github.com/zsh-users/zsh-completions

### git clone
1. `cd ~`
2. `git clone https://github.com/cagalliorb/dotfiles`
3. `sh dotfilesLink.sh`
