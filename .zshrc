
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

#Aliases
#Git
alias g=git
alias gaap="git add --all && git commit && git push"
alias gc="git checkout"
alias gs="git status"
alias gb="git branch"
alias gdel="git branch -d"
alias gdelori="git push origin -d"
alias gpnewbranch="git push --set-upstream origin "

alias win="cd /mnt/c/Users/jakoy/Desktop && echo 'On windows bby'"
alias curproj="cd /mnt/c/Users/jakoy/Desktop/SmallScreenLife && cr"
alias comd="nano ~/.zshrc"
alias rm="rm -r"
alias cp="cp -r"
alias cd..="cd .."
alias upd="source ~/.zshrc && echo 'Update Zsh config file!'"
alias cr="clear && pwd"
alias c=clear
