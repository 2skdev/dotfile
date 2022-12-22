# fish greeting
set fish_greeting

# vi mode
fish_vi_key_bindings

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

# config
set -gx BD_OPT 'sensitive'

# theme
set -l light_blue 8ed0ff
set -l red ff6161
set -l pink f8bbf6
set -l green 00c694
set -l yellow fff92f
set -l orange ff8800
set -l white ffffff
set -l dark_gray 202328

set -g fish_color_command $light_blue
set -g fish_color_error $red
set -g fish_color_operator $pink
set -g fish_color_param $pink
set -g fish_color_quote $green
set -g tide_charagter_color $green
set -g tide_character_color_failure $red
set -g tide_character_icon \uf054
set -g tide_character_vi_icon_default \uf053
set -g tide_character_vi_icon_replace \uf079
set -g tide_character_vi_icon_visual \uf0a4
set -g tide_context_bg_color $dark_gray
set -g tide_context_color_default $orange
set -g tide_context_color_root $orange
set -g tide_context_color_ssh $orange
set -g tide_cmd_duration_bg_color $dark_gray
set -g tide_cmd_duration_color $yellow
set -g tide_git_bg_color $green
set -g tide_git_bg_color_unstable $yellow
set -g tide_git_bg_color_urgent $red
set -g tide_git_icon \uf113
set -g tide_os_bg_color $dark_gray
set -g tide_os_color $orange
set -g tide_pwd_bg_color $dark_gray
set -g tide_pwd_color_anchors $white
set -g tide_pwd_color_dirs $white
set -g tide_pwd_truncated_dirs $yellow
set -g tide_status_bg_color $dark_gray
set -g tide_status_bg_color_failure $red
set -g tide_status_color $green
set -g tide_status_color_failure $white
