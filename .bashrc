## ******************************************
## Elena customisations
## ******************************************

export GPGKEY=48C03FDA

# # Ubuntu nice defaults
/usr/bin/setxkbmap -option ctrl:nocaps
alias python=python3
alias pip=pip3
export PYTHONDONTWRITEBYTECODE='None'

# Virtualenvwrapper
. /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs
alias activate='workon ${PWD##*/}'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
source ~/.autoenv/activate.sh


## Elena aliases
## ******************************************

# Task
alias tasks='source ~/task/tasks.sh'

# Bash
alias reload='source ~/.bashrc'

alias xclip="xclip -selection c"

## https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
alias FUCK='fuck'

# Django
alias rs='./manage.py runserver 0.0.0.0:8000'
alias rs1='./manage.py runserver 0.0.0.0:8001'
alias rs2='./manage.py runserver 0.0.0.0:8002'
alias mailserver='python -m smtpd -n -c DebuggingServer localhost:1025'
alias webserver='python -m SimpleHTTPServer'
alias runmail='python -m smtpd -n -c DebuggingServer localhost:1025'


## end Elena customisations
## ******************************************

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh
