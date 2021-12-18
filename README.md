I have a particular setup for my machine, with many configuration scripts stored in private repositories. I plan to release a customized operating system with these dotfiles and scripts once I find time to do so. For now, if you would like to use my setup, please email me, and I'm happy to share.

# Startup Code
```
git init --bare $HOME/.zhu_config
alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'" >> $HOME/.bashrc
```
# Migrating
```
ssh-keygen # link ssh keys to https://github.com/settings/keys
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
zhum macos && mac && zhum plist
```
## Windows
```
wsl && zhum windows
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
# File System
```
zhum file
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
installapps
installkb
installdocs
migrate vim
migrate emacs
migrate tmux
migrate mutt
migrate fzf
migrate iterm
migrate pdf
```
