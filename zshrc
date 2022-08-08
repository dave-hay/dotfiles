#
# Uncomment below if want to diagnose .zshrc loadtime 1/2
# zmodload zsh/zprof
#

# Load all dotfiles in system
for DOTFILE in `find $HOME/dotfiles/system`;
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done;

for FILE in `find $HOME/dotfiles/private`;
do
    [ -f "$FILE" ] && source "$FILE"
done;

autoload -U compinit; compinit
# Load Pure theme
autoload -U promptinit; promptinit
# prompt pure

# ruby
eval "$(rbenv init - zsh)"
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# autoload -Uz compinit
# compinit
# zstyle ':completion:*' menu select

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="$PATH:$(go env GOROOT)/misc/wasm"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

# emacs
PATH="$HOME/.emacs.d/bin:$PATH"

# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# Bun
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Uncomment below if want to diagnose .zshrc loadtime 2/2
# zprof

#
#export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

