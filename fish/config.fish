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

# Aliases
alias lah="ls -lah"
alias vi=nvim

# Wasmer
export WASMER_DIR="/home/cam/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
