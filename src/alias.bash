# privileged
if [ $UID -ne 0 ]; then
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias snano='sudo nano'
    alias root='sudo su'
    alias apt='sudo apt'
    alias apt-get='sudo apt-get'
fi

# system utils
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# mkdir
alias mkdir="mkdir -pv"

# diff
alias diff='colordiff'

# ls
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# net
alias ping='ping -c 5'
alias myip="curl http://ipecho.net/plain; echo"

# python server
alias pyserver='python -m SimpleHTTPServer'
