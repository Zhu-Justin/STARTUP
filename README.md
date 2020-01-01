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
git clone --bare https://github.com/Zhu-Justin/.zhu_config.git $HOME/.zhu_config
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
