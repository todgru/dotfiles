# todgru's dotfiles

- `.tmux.conf` is available, but I don't use tmux much anymore. I like this conf, though. :)

#### execute this bit of script for setup

```
# Clone dotfiles repo to $HOME directory
git clone git@github.com:todgru/dotfiles.git $HOME/dotfiles
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

# CLI helpers

more good stuff [here](https://github.com/nath1as/.files)

## git

- [github-cli `gh`](https://cli.github.com/)
- [`git-user`](https://github.com/geongeorge/Git-User-Switch)
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

# vim git gpg

- `brew install gnugp`
- setup `~/.gnupg/gpg-agent.conf` file. this is all I needed:

```
echo "
default-cache-ttl 0
max-cache-ttl 0
" >> ~/.gnupg/gpg-agent.conf
```

- download [gnupg](https://github.com/jamessan/vim-gnupg) to `~/.vim/plugins/gnupg.vim`
- alias for decrypting: `alias vd='vim -n -i "NONE" "+set filetype=yaml"'`

### Export key from old machine to new machine

- list keys `gpg --list-secret-keys`
- export key `gpg --export-secret-keys {the id from the list} > my-key.asc`
- transfer key to new machine
- import key `gpg --import my-key.asc`
- delete public and private key `gpg --delete-keys` and `gpg --delete-secret-keys`

**Edited gpg install [from this gist](https://gist.github.com/todgru/4652807)**

# Other Apps

- [Clocker](https://github.com/n0shake/Clocker) OSx timezone menu bar utility `brew install --cask clocker`
