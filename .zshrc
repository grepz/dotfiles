# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=100000

# Exclude command dups in history file
setopt hist_ignore_all_dups
setopt appendhistory extendedglob notify
unsetopt autocd beep nomatch
bindkey -e

# Autocd to dir when writing '/dir', no need to 'cd /dir'
setopt autocd

# compinit
zstyle :compinstall filename '~/.zshrc'

autoload -U colors
colors

autoload -Uz compinit
compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BNo matches for: %d%b'
# end

alias ls='ls -G'
alias mmake='make -j4'
alias em='emacs -Q -nw'

autoload -Uz promptinit
promptinit
prompt walters

plugins=(git colored-man colorize vagrant virtualenv pip python osx zsh-syntax-highlighting)

PATH=$PATH:~/arm-none-eabi/bin:/opt/local/bin:~/bin
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/local/lib:~/lib
LD_PATH=$LD_PATH:/opt/local/lib:~/lib

. ~/.zsh_keybind

. ~/erlang/R16/activate
