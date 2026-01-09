export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="clean-my"

# Case-sensitive completion.
# CASE_SENSITIVE="true"

# Use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

# Disable colors in ls.
DISABLE_LS_COLORS="false"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

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

plugins=(git colored-man-pages colorize vagrant virtualenv pip python sudo podman zsh-navigation-tools)

source $ZSH/oh-my-zsh.sh

# User configuration

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000000

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
alias emacs="emacs -nw"
alias em="emacs -Q -nw"
alias ec="emacsclient -nw -c"

PATH=$PATH:/usr/sbin:~/arm-none-eabi/bin:/opt/local/bin:/opt/local/sbin:~/bin:~/.kiex/bin:~/bin/wg
PATH=$PATH:/usr/local/bin
PATH=$PATH:/opt/viber
PATH=$PATH:~/local/bin
PATH=$PATH:~/.krew/bin
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/lib:~/lib
LD_PATH=$LD_PATH:/opt/local/lib:~/lib

. $HOME/.zsh_keybind
. $HOME/.asdf/asdf.sh

eval $(ssh-agent -s)

fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit
compinit

# IntelliShell
INTELLI_HOME=/home/grepz/.local/share/intelli-shell
# export INTELLI_SEARCH_HOTKEY=\C-@
# export INTELLI_LABEL_HOTKEY=C-l
# export INTELLI_SAVE_HOTKEY=C-b
# export INTELLI_SKIP_ESC_BIND=0
alias intelli-shell="$HOME/bin/intelli-shell"
source $INTELLI_HOME/bin/intelli-shell.sh

# export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"
# export GUIX_PROFILE="$HOME/.guix-profile"

# source "$GUIX_PROFILE/etc/profile"

autoload znt-history-widget
zle -N znt-history-widget
bindkey "^R" znt-history-widget
