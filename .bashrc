# starship
eval "$(starship init bash)"

# z
source ~/.local/z/z.sh

# alias
alias ..="cd .."
alias cat="batcat"
alias ls="exa --icons"
alias ll="exa -ahl --icons"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
