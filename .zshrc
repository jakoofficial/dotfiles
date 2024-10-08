
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jay/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
#Aliass
#Git
alias g=git
alias g-aa="git add --all && git commit && git push"

alias cls=clear

alias rm="rm -r"
alias cp="cp -r"
alias cd..="cd .."
alias upd="source ~/.zshrc && echo 'Update Zsh config file!'"
