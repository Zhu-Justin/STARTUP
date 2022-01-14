I have a particular setup for my machine, with many configuration scripts stored in private repositories to try to make the architecture not too monolithic. I plan to release a customized operating system with these dotfiles and scripts once I find time to do so. For now, if you would like to use my setup, please email me, and I'm happy to share.

# Security First
```
ssh-keygen # link ssh keys to https://github.com/settings/keys for ssh protocol
```

# Startup Code
```
curl -s -L https://raw.githubusercontent.com/Zhu-Justin/STARTUP/master/startup.sh | bash
```

# Restart
```
git init --bare $HOME/.zhu_config
alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'" >> $HOME/.bashrc
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
