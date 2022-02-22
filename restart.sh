shopt -s expand_aliases
git init --bare $HOME/.zhu_config
alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'" >> $HOME/.profile
