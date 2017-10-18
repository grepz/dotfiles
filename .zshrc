export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

# Case-sensitive completion.
# CASE_SENSITIVE="true"

# Use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

# Disable colors in ls.
# DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git colored-man colorize vagrant virtualenv pip python osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

# Exclude command dups in history file
setopt hist_ignore_all_dups
setopt appendhistory extendedglob notify
unsetopt autocd beep nomatch
bindkey -e

# Autocd to dir when writing '/dir', no need to 'cd /dir'
setopt autocd

alias mmake='make -j4'
alias em='emacs -Q -nw'

PATH=$PATH:~/arm-none-eabi/bin:/opt/local/bin:/opt/local/sbin:~/bin:/opt/local/lib/mysql55/bin:/opt/local/lib/postgresql95/bin/:/opt/local/libexec/gnubin/
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/lib:~/lib
LD_PATH=$LD_PATH:/opt/local/lib:~/lib

. $HOME/.zsh_keybind
. $HOME/erlang/erlang/activate
. $HOME/.cargo/env
