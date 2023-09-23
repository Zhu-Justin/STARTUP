if [ -f ~/.profile && -d ~/.zhu_config ]; then
  rm -i ~/.profile
  rm -i ~/.zhu_config
else
  shopt -s expand_aliases
  alias config='/usr/bin/git --git-dir=$HOME/.zhu_config/ --work-tree=$HOME'
  echo ".zhu_config" >> .gitignore
  git clone --bare git@github.com:Zhu-Justin/.zhu_config.git $HOME/.zhu_config
  config checkout
  config config --local status.showUntrackedFiles no
  config push --set-upstream origin master
  source ~/.profile
fi
