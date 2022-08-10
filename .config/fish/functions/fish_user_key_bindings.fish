function __fzf_git_branch
    eval "git branch | fzf | xargs git checkout"
    commandline -f repaint
end

function fish_user_key_bindings
    # jj normal mode
    fish_vi_key_bindings --no-erase
    bind -M insert -m default jj force-repaint

    bind -M insert \cb '__fzf_git_branch'

    # open editor
    bind -M insert \co '$EDITOR .'
end

fzf_key_bindings
