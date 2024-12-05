# Set the directory we want to store Zinit and plugins in.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet.
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load Zinit.
source "$ZINIT_HOME/zinit.zsh"

# Add in Zsh plugins.
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets.
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::ubuntu
zinit snippet OMZP::docker-compose
zinit snippet OMZP::dotnet
zinit snippet OMZP::eza
zinit snippet OMZP::systemd
zinit snippet OMZP::command-not-found

# Load completions.
autoload -Uz compinit && compinit

zinit cdreplay -q

# Initialize prompt.
eval "$(starship init zsh)"

# Set up keybindings.
bindkey -e # Use Emacs bindings.
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[3~' delete-char

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Enable history.
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups

# Completion styling.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:ls:*' fzf-preview 'cat $realpath'
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# Enable auto cd.
setopt auto_cd

# Shell integrations.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init --cmd cd zsh)"

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

alias comd="nano ~/.zshrc"
alias rm="rm -r"
alias cp="cp -r"
alias cd..="cd .."
alias upd="source ~/.zshrc && echo 'Update Zsh config file!'"
alias c=clear

alias tree="eza --tree"
