# If you want to diagnose .zshrc loadtime...
# zmodload zsh/zprof
# ======= configs go here =======
# zprof

# Load all dotfiles in system
for DOTFILE in `find $HOME/dotfiles/system`;
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done;

for FILE in `find $HOME/dotfiles/private`;
do
    [ -f "$FILE" ] && source "$FILE"
done;

# Load Pure theme
fpath+=~/.zfunc
autoload -U compinit; compinit
autoload -U promptinit; promptinit
prompt pure


# asdf
. /usr/local/opt/asdf/libexec/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh

export PATH="/usr/local/sbin:$PATH"

# emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# go
# export GOPATH="$HOME/go"
# export PATH="$PATH:$GOPATH/bin"

# sapling
ulimit -n 1048576 1048576

. /usr/local/opt/asdf/libexec/asdf.sh

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"
# source /opt/intel/oneapi/setvars.sh > /dev/null
