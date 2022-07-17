# fish greeting
set fish_greeting

# alias
alias vim='nvim'
alias ls='exa --icons'
alias ll='exa -ahl --icons'
alias cat='batcat'
alias vimdiff='nvim -d'
alias dc='docker-compose'

# env
set -x EDITOR nvim
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

set -gx BD_OPT 'sensitive'

