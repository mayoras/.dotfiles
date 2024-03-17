if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
source ~/.asdf/asdf.fish
set fish_greeting

# >>> deno initialize >>>
set -gx DENO_INSTALL $HOME/.deno
fish_add_path $DENO_INSTALL/bin
# <<< deno initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/cam/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# Aliases
alias lah="ls -lah"
alias vi=nvim
