# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gm='git merge --no-ff'

alias got='git '
alias gut='git '

alias goto_www='cd /home/sites/auto.mail.ru/.www/'
alias gruntfile='grunt --gruntfile=/home/sites/auto.mail.ru/var/grunt/Gruntfile.js --env=cars'


# Command prompt
DULL=0
BRIGHT=1

FG_BLACK=30
FG_RED=31
FG_GREEN=32
FG_YELLOW=33
FG_BLUE=34
FG_VIOLET=35
FG_CYAN=36
FG_WHITE=37

FG_NULL=00
BG_NULL=00

##
# ANSI Escape Commands
##
ESC="\033"
NORMAL="\[$ESC[m\]"
RESET="\[$ESC[${DULL};${FG_WHITE};${BG_NULL}m\]"

BLACK="\[$ESC[${DULL};${FG_BLACK}m\]"
RED="\[$ESC[${DULL};${FG_RED}m\]"
GREEN="\[$ESC[${DULL};${FG_GREEN}m\]"
YELLOW="\[$ESC[${DULL};${FG_YELLOW}m\]"
BLUE="\[$ESC[${DULL};${FG_BLUE}m\]"
VIOLET="\[$ESC[${DULL};${FG_VIOLET}m\]"
CYAN="\[$ESC[${DULL};${FG_CYAN}m\]"
WHITE="\[$ESC[${DULL};${FG_WHITE}m\]"

function evil_git_dirty {
	[[ $(git diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "*"
}

function parse_git_branch {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo "${ref#refs/heads/}$(evil_git_dirty) "
}

PS1="${BLUE}[\u@\h ${VIOLET}\W${NORMAL}] ${GREEN}\$(parse_git_branch)${RESET}\$ "


# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/node/bin
PATH=$PATH:/home/sites/auto.mail.ru/node_modules/stylus/bin/

export PATH
