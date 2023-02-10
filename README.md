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

# zsh

Install [Prezto](https://github.com/sorin-ionescu/prezto)

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

- copy `.zpreztorc` from old machine.

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
- [UTC Clock](https://github.com/netik/UTCMenuClock)
- [VS Code Editor](https://code.visualstudio.com/)
  - on old machine, `code --list-extensions > installed-extensions.txt`
  - copy `installed-extensions.txt` to new machine
  - `cat installed-extensions.txt | xargs -L 1 code --install-extension`
  - enable VIM plugin key repeat: `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`
- [NVM](https://github.com/nvm-sh/nvm#installing-and-updating) NodeJS version manager.
- Homebrew
- [Hammerspoon](https://www.hammerspoon.org/) disable launching iTunes Music whenever the headphone buttons are acidentally pressed.
  - copy [this lua script](./.hammerspoon/init.lua) to `~/.hammerspoon/init.lua`.
- [Firefox]() bookmarks, [settings]() and [extensions]().
- Tableplus
- Cisco AnyConnect
- OS X: [Disable System Sound Effects](https://gist.github.com/todgru/osx-mac-disable-system-sound-effects.md)

## Elasticsearch install on M1 Mac

Working based on these [comments](https://github.com/elastic/elasticsearch/issues/91159).
```sh
>> brew install openjdk
>> brew install elastic/tap/elasticsearch-full
>> sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
>> /usr/libexec/java_home # display path to openJDK
/opt/homebrew/Cellar/openjdk/19.0.2/libexec/openjdk.jdk/Contents/Home
>> code /opt/homebrew/Cellar/elasticsearch-full/7.17.4/homebrew.mxcl.elasticsearch-full.plist
# insert the following before the last closing <dict>
#    <key>EnvironmentVariables</key>
#    <dict>
#      <key>ES_JAVA_HOME</key>
#      <string>/opt/homebrew/Cellar/openjdk/19.0.2/libexec/openjdk.jdk/Contents/Home</string>
#    </dict>
>> echo "\nxpack.ml.enabled: false\n" >> /opt/homebrew/etc/elasticsearch/elasticsearch.yml
>> echo "\nexport ES_JAVA_HOME=$(/usr/libexec/java_home)\n" >> ~/.zshrc

# Test elasticserarch:
>> elasticsearch
```
