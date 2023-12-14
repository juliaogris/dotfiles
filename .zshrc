export ZSH="/Users/julia/.oh-my-zsh"
ZSH_THEME="julia"
plugins=(git)
source "$ZSH/oh-my-zsh.sh"

alias cdd="cd /Users/julia/Development"
alias cde="cd /Users/julia/Development/evy"
alias reload="source /Users/julia/.zshrc"
alias ls="ls -G"
alias la="ls -AG"
alias ll="ls -lAG"

export PATH="$PATH:/Users/julia/bin"
export PATH="/opt/go/stable/bin:$PATH"
export GOPATH="/Users/julia/go"
export EDITOR="subl -w"
export LESS="-F -X $LESS"
export EVY_DEFAULT_GOAL="all"

eval "$(/opt/homebrew/bin/brew shellenv)"
HERMIT_ROOT_BIN="${HERMIT_ROOT_BIN:-"$HOME/bin/hermit"}"
eval "$(test -x $HERMIT_ROOT_BIN && $HERMIT_ROOT_BIN shell-hooks --print --zsh)"