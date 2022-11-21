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
autoload -U compinit; compinit
autoload -U promptinit; promptinit
prompt pure

# ruby
eval "$(rbenv init - zsh)"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# asdf
. /usr/local/opt/asdf/libexec/asdf.sh
. ~/.asdf/plugins/java/set-java-home.zsh

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# conda config --set auto_activate_base false
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

####################
# Not using currently
####################
# Bun
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
#
# haskell
# [ -f "/Users/davidhay/.ghcup/env" ] && source "/Users/davidhay/.ghcup/env" # ghcup-env
#
# Volta = Node version manager
# export VOLTA_HOME="$HOME/.volta"
# export PATH="$VOLTA_HOME/bin:$PATH"
# pnpm
# export PNPM_HOME="/Users/davidhay/Library/pnpm"
# export PATH="$PNPM_HOME:$PATH"
# Go
# export GOPATH=$HOME/go
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin
# export PATH="$PATH:$(go env GOROOT)/misc/wasm"
# Java
# export JAVA_HOME=$(/usr/libexec/java_home)
