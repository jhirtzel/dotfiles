Store dotfiles, configuration, functions, etc in git. 
See these links for more details:
	http://www.atlassian.com/git/tutorials/dotfiles
	https://news.ycombinator.com/item?id=11071754
	https://github.com/Siilwyn/my-dotfiles/tree/master/.my-dotfiles

## Setup
```sh
git init --bare $HOME/.my-dotfiles
alias config='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'
config remote add origin git@github.com:jhirtzel/dotfiles.git
config config status.showUntrackedFiles no
```

## Replication
```sh
git clone --separate-git-dir=$HOME/dotfiles https://github.com/jhirtzel/dotfiles.git dotfiles_TMP
rsync --recursive --verbose --exclude '.git' dotfiles_TMP/ $HOME/
rm -r dotfiles_TMP
```

## Configuration
```sh
config config status.showUntrackedFiles no
config remote set-url origin git@github.com:jhirtzel/dotfiles.git
```

## Usage
Use like you would git, except with 'config' as the keyword
```sh
config status
config add .gitconfig
config commit -m 'Add gitconfig'
config push
```
