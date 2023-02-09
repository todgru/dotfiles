# Editors
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# git
alias gco='git checkout'
alias gcom='git checkout master'
alias gitlog="git log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=local --max-count=50 --no-merges"
alias gs='git status'
# kick ci! trigger ci build for branch that recently moved from "draft" to "ready for review".
alias gkci='git commit --allow-empty -m "empty commit to trigger ci" && git push origin $(git branch --show-current)'
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
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

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
bindkey -v
bindkey "^R" history-incremental-search-backward

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

# see "Elasticsearch install on M1 Mac" in ./README.md
export ES_JAVA_HOME=$(/usr/libexec/java_home)

