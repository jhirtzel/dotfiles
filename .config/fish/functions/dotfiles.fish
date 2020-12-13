set -gx PATH ~/.local/bin $PATH

# alias git for configuring HOME config files
function dotfiles
    /usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME $argv
end
