# Editors
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# git
alias gco='git checkout'
alias gcom='git checkout master'
alias gitlog="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=local --max-count=50 --no-merges"
alias gs='git status'
export PATH="$HOME/dotfiles/diff-so-fancy:$PATH"

# GPG
export GPG_TTY=`tty`
alias vd='vim -n -i "NONE" "+set filetype=yaml"'

# Rclone
export RCLONE_CONFIG=/Volumes/Keybase/private/todgru/config/rclone/rclone.conf

# grep
export GREP_OPTIONS='--color=auto'

# directory listing @TODO does this work in zsh?
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# serving html pages and javascript
export serve='/usr/bin/python -m SimpleHTTPServer 8000'

# Postgresql
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

# Node/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Application env vars
[ -s "$HOME/dotfiles/private.zsh" ] && \. "$HOME/dotfiles/private.zsh"

alias commit-types='cat ~/dotfiles/commit-types.txt'
alias ct='cat ~/dotfiles/commit-types.txt'

# TODO - include is default zsh, because iterm2 is funny
# bindkey -v
# bindkey '^R' history-incremental-search-backward
