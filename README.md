I have a particular setup for my machine, with many dotfiles stored in private repositories. I plan to release a customized operating system with these dotfiles once I find time to do so. For now, if you would like to use my setup, please email me, and I'm happy to share.

# Startup Code
```
git init --bare $HOME/.zhu_config
alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'" >> $HOME/.bashrc
```
# Migrating
```
alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
echo ".zhu_config" >> .gitignore
git clone --bare git@github.com:Zhu-Justin/.zhu_config.git $HOME/.zhu_config
config checkout
config config --local status.showUntrackedFiles no
config push --set-upstream origin master
source ~/.profile
```
# OS
## Linux
```
zhum linux
```
## Mac OS
```
zhum macos
```
## Windows
```
zhum windows
```
# Shell
## Bash
```
zhum bash
```
## Zsh
```
zhum zsh
```
# Home
Privacy
```
zhum home
```
# Work
Public
```
zhum work
```
# Applications
```
migrate vim
migrate emacs
migrate tmux
migrate mutt
migrate fzf
```
