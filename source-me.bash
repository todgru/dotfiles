#!/bin/bash
export EDITOR="/usr/bin/vim"

# git
source $HOME/dotfiles/git-completion.bash # adds auto completion for local/remote branch names
alias gco='git checkout'
alias gcom='git checkout master'
alias gitlog="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=local --max-count=50 --no-merges"
alias gs='git status'

# GPG
export GPG_TTY=`tty`
alias vd='vim -n -i "NONE" "+set filetype=yaml"'

# grep
export GREP_OPTIONS='--color=auto'

# node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH=/Users/todd.gruener/.nvm/versions/node/v4.3.2/lib/node_modules/:/Users/todd.gruener/.nvm/versions/node/v6.10/lib/node_modules/:$NODE_PATH

# prompt
RS="\[\033[0m\]"    # reset
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
export PS1="$FRED[\w$FGRN \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')$FRED]\$$RS "

# directory listing
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# serving html pages and javascript
export serve='/usr/bin/python -m SimpleHTTPServer 8000'
