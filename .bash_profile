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


# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local/node/bin
PATH=$PATH:/home/sites/auto.mail.ru/node_modules/stylus/bin/

export PATH
