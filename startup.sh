if [ -f ~/.profile ]; then
  rm -i ~/.profile
if [ -f ~/.zhu_profile ]; then
  rm -i ~/.zhu_profile
elif [ -d ~/.zhu_config ]; then
  rm -i ~/.zhu_config
else
  git clone --bare git@github.com:Zhu-Justin/.zhu_config.git $HOME/.zhu_config
  shopt -s expand_aliases;
  alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME';
  echo ".zhu_config" >> .gitignore
  /usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME checkout
  /usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME config --local status.showUntrackedFiles no
  /usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME push --set-upstream origin master
  source ~/.profile
fi
