export ZSH="/Users/julia/.oh-my-zsh"
ZSH_THEME="julia"
plugins=(git-julia)
source "$ZSH/oh-my-zsh.sh"

alias cde="cd /Users/julia/Development/evy"
alias reload="source /Users/julia/.zshrc"
alias ls="ls -G"
alias la="ls -AG"
alias ll="ls -lAG"
alias gsn="git show --name-only"
alias glg="git histl"
alias glgs="git hist"
alias prn="git pr new"
alias prm="git pr merge"
alias grc="git rebase --continue"
alias sug="gh copilot suggest --target shell"
alias exp="gh copilot explain"

export GOPATH="/Users/julia/go"
export PATH="$PATH:/Users/julia/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$GOPATH/bin:$PATH"
#export PATH="/opt/go/stable/bin:$GOPATH/bin:$PATH"
export EDITOR="subl -wn"
export LESS="-F -X $LESS"
export EVY_DEFAULT_GOAL="all"
export EVY_FIREBASE_CREDENTIAL_FILE="/Users/julia/Development/evy-lang-test-firebase-adminsdk-5ud3e-4ef53c5971.json"
export EVY_LEARN_PRIVATE_KEY="MIICXQIBAAKBgQDYqU/M67d5oLFOOPWUOWezKD/8JeMNVDMy0QXiPxkzQuMailyy9X4b3cc9Fad/X0rBqkVUuJIM9592maRmPmA2GOlaCj9of82iAvjTtKD6OnikJIyPjk06ZINWtWJofl08ZeSni67JZ4ucoDFc8FlT/cGVOiPkSV8btjeHKLCQ/wIDAQABAoGAKmzU/Hp3vfBSZ8/Nfs3S2YkbJmPA1x5SvDOj5E6Yv6nsUIkhZ8WcgRZnajWwS8e8Grodw1408ycV6aJiR8cVDYZoqhXeRarO4rbL9PWoadt1Zj9hPJmHW4C9kdd2CVvh6ZPv45p5LlnFlvwzgbU2MFeTMK92ecrzCoQnxxiE98kCQQD5CGgYID5Zk3EWfTw8Dd7uKRSghGBbS63fp6A4HU86WDxFeZhBj8huIFaW+iQZonE3udFBZRTo8zAzqsO10fUFAkEA3rkO3E+Rs2RuiAImT3kfkdOQ776dTNICxatyFcd3WEMNIte1dDJq0oVAX/E5bEA9mqbKUn2iC4YVTF0Z8JWNMwJALmWEj0oik6nGnfwDJuUmrZR1xVokYZ397PdcAFhllGcwA3meBkj1fJ8Fwucjpqr/EPTLqbVdafE0/8tG3y8YyQJBAIeCTLpaZymgl2eE904vQbf14x8a+JW+yRT/hQAfRkubMCjc2XgDHN9NV6eIGwnz5AduJ3cdHTSptdeqZZftReUCQQCyJh2fnkyTolarZgMJVeyC8L1vywiZ/TpaqGF1Y2TzdhEEnC2RaAnL8N/duRi1scDwC9kwt974aIlpaxRizdeJ"

eval "$(/opt/homebrew/bin/brew shellenv)"
HERMIT_ROOT_BIN="${HERMIT_ROOT_BIN:-"$HOME/bin/hermit"}"
eval "$(test -x $HERMIT_ROOT_BIN && $HERMIT_ROOT_BIN shell-hooks --print --zsh)"

mk() {
	local r
	r=$(git rev-parse --show-toplevel) || return
	make -C "${r}" "$@"
}

gro() {
	[[ -z "${1-}" ]] && { echo "usage: gro <N> [branch]"; return 1; }
	local branch="${2:-$(git trunk)}"
	git rebase --onto "${branch}" "@~$1"
}

grup() {
    git reset --hard '@{u}'
}

gr() {
	local cnt="${1:-1}"
	git reset "@~${cnt}"
}

