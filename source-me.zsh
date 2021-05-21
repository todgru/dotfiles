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

# homebrew
export PAN="/usr/local/Cellar:$PATH"

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

# Prompt
#  %D     The date in yy-mm-dd format.
#  %T     Current time of day, in 24-hour format.
#  %t %@  Current time of day, in 12-hour, am/pm format.
#  %*     Current time of day in 24-hour format, with seconds.
#  %w     The date in day-dd format.
#  %W     The date in mm/dd/yy format.
#  %D{strftime-format}
#  more info man zshmisc, grep "date and time"
RPROMPT="[%D{%y/%m/%f}|%@]"
