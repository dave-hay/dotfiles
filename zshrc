# If you want to diagnose .zshrc loadtime...
# zmodload zsh/zprof
# ======= configs go here =======
# zprof

# Load all dotfiles in system
for DOTFILE in `find $HOME/dotfiles/system`;
do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done;

# for FILE in `find $HOME/dotfiles/private`;
# do
#    [ -f "$FILE" ] && source "$FILE"
# done;

# history options
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Load Pure theme
fpath+=~/.zfunc
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U compinit; compinit
autoload -U promptinit; promptinit
prompt pure


PATH="$HOME/dotfiles/scripts:$PATH"
eval "$(rtx activate zsh)"

export PATH="/usr/local/sbin:$PATH"

# sapling
# ulimit -n 1048576 1048576

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
