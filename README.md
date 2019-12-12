# todgru's slimer yet dotfiles

* `.tmux.conf ` is available, but I don't use tmux much anymore. I like this conf, though. :)

#### execute this bit of script for setup

```
echo '
# added by todgru dotfiles
if [[ -s "${ZDOTDIR:-$HOME}/dotfiles/source-me.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/dotfiles/source-me.zsh"
fi
' >> ${ZDOTDIR:-$HOME}/.zshrc
ln -s $HOME/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/vim $HOME/.vim
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig
```

#### vim & gpg
Using gpg with vim - setup and background [in this gist](https://gist.github.com/todgru/4652807).
