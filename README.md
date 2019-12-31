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
```
# OS
## Linux
```
migrate zhu_linux
```
## Mac OS
```
migrate zhu_macos
```
## Windows
```
migrate zhu_windows
```
# Shell
## Bash
```
migrate zhu_bash
```
## Zsh
```
migrate zhu_zsh
```
# Home
Privacy
```
migrate zhu_home
```
# Work
Public
```
migrate zhu_work
```
