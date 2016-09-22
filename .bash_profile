export PYTHONPATH=/usr/local/lib/python2.7/site-packages
export PATH=/bin:/usr/bin:/usr/sbin:/sbin:/usr/local/bin

# Show dirty state in prompt when Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Colorize and format prompt
PS1_OLD=${PS1}
if [ -f ~/.git-prompt.sh  ]; then
    source ~/.git-prompt.sh
    export PS1='\[\033[1;91m\]\!\[\033[0m\] \[\033[1;94m\]\W\[\033[0m\] \[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
fi

export PS1="\[\033[36m\]\u\[\033[m\] @ \[\033[35m\]\h:\[\033[33;1m\]\w\[\033[m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad




#Aliases and function shortcuts
alias nba='cd /Users/adamg/amg-software-projects/nba-stats'
alias vw='cd /Users/adamg/amg-software/website-vandyapps/vandyapps_com'
alias pmp='python manage.py'

# use MacVim instead of old vim
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias l='ls -a'
alias sesh='java -jar'
alias nwks='cd /Users/adamg/Documents/vanderbilt-classes/networks-cs283/CS4283_Assignments'

# to show directory slashes
alias ls='ls -F'

function jcat {
 cat "$1" | python -mjson.tool 
}

function awssh {
    ssh -i /Users/adamg/.ssh/adams-key.pem "$1"
}

function awscp {
    scp -i /Users/adamg/.ssh/adams-key.pem "$1" "$2"
}

function substr {
    for file in *$1; do
        mv "$file" "${file:$2}"
    done
}


#needs to be fixed, syntax error
#function chext{
#    ren "*$1" "#1$2"
#}

function c {
    builtin cd "$@" && ls -F
    }
