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

# rtx
eval "$(/usr/local/bin/rtx activate zsh)"

export PATH="/usr/local/sbin:$PATH"

# direnv
eval "$(direnv hook zsh)"


# emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# sapling
ulimit -n 1048576 1048576

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('~/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "~/mambaforge/etc/profile.d/conda.sh" ]; then
        . "~/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="~/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

##### OLD #####
# asdf
# . /usr/local/opt/asdf/libexec/asdf.sh
# . ~/.asdf/plugins/java/set-java-home.zsh

# go
# export GOPATH="$HOME/.asdf/installs/golang/1.20/packages"
# export GOROOT="$HOME/.asdf/installs/golang/1.20/go"
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin
# export GOBIN=$(go env GOBIN)
# export PATH=$PATH:$GOBIN
#
# /usr/local/share/zsh/site-functions # for completions
# source /opt/intel/oneapi/setvars.sh > /dev/null
