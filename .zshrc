# Created by newuser for 5.9

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000


autoload -U compinit promptinit
compinit
promptinit
autoload -U colors && colors
# This will set the default prompt to the walters theme

zstyle ':completion:*' menu select

setopt HIST_IGNORE_DUPS # Duplikate bei der Suche ignorieren

[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward #History search
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
export LS_COLORS

alias ls='ls --color=auto'
alias pc='sudo pacman'
alias v='vim'
PROMPT="%{$fg[green]%}%n %{$fg_no_bold[cyan]%}%B%1~%b %{$reset_color%}%#" # Farben und Prompt Konfiguration



