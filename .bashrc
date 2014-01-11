# Check for an interactive session
[ -z "$PS1" ] && return

export HISTFILESIZE=1000000
export HISTSIZE=10000

alias ls='ls --color=auto'
alias mmake='make -j4'
alias em='emacs -Q -nw'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/arm-none-eabi/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_PATH=$LD_PATH:/usr/local/lib
