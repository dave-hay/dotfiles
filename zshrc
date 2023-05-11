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

# history options
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Load Pure theme
fpath+=~/.zfunc
autoload -U compinit; compinit
autoload -U promptinit; promptinit
prompt pure


# asdf
. /usr/local/opt/asdf/libexec/asdf.sh
# . ~/.asdf/plugins/java/set-java-home.zsh

export PATH="/usr/local/sbin:$PATH"

# direnv
eval "$(direnv hook zsh)"

# go
export GOPATH="$HOME/.asdf/installs/golang/1.20/packages"
export GOROOT="$HOME/.asdf/installs/golang/1.20/go"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
# export GOBIN=$(go env GOBIN)
# export PATH=$PATH:$GOBIN

# emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# /usr/local/share/zsh/site-functions # for completions


# sapling
ulimit -n 1048576 1048576

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"
# source /opt/intel/oneapi/setvars.sh > /dev/null

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
