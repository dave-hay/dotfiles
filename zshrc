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
setopt APPEND_HISTORY  # Append history to the history file, rather than replace it
setopt EXTENDED_HISTORY  # Save each command's timestamp
setopt INC_APPEND_HISTORY  # Immediately append to the history file, not just when a terminal exits
setopt SHARE_HISTORY  # Share history across terminals
setopt HIST_FIND_NO_DUPS     # no duplicate entries
setopt HIST_IGNORE_ALL_DUPS  # ignore duplicates
setopt HIST_IGNORE_SPACE     # ignore lines starting with space
setopt HIST_SAVE_NO_DUPS     # don't write duplicate lines to the history file
setopt HIST_REDUCE_BLANKS    # remove superfluous blanks before recording entry

# Load Pure theme
fpath=(~/.zsh/completion $fpath)
fpath+=~/.zfunc
autoload -U compinit; compinit
autoload -U promptinit; promptinit
prompt pure

# vivid LS_COLORS
export LS_COLORS="$(vivid generate one-dark)"

eval "$(mise activate zsh)"

# Golang
export PATH=$PATH:$GOPATH/go/bin
export PATH=$PATH:$GOROOT/go/bin

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/dotfiles/scripts:$PATH"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('~/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#   eval "$__conda_setup"
# else
#   if [ -f ~/mambaforge/etc/profile.d/conda.sh ]; then
#     . ~/mambaforge/etc/profile.d/conda.sh
#   else
#     export PATH=~/mambaforge/bin:$PATH
#   fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

##### OLD #####

# go
# export GOBIN=$(go env GOBIN)
# export PATH=$PATH:$GOBIN
#
# /usr/local/share/zsh/site-functions # for completions
# source /opt/intel/oneapi/setvars.sh > /dev/null
#
# direnv
# eval "$(direnv hook zsh)"

# emacs
# PATH="$HOME/.emacs.d/bin:$PATH"

# sapling
# ulimit -n 1048576 1048576

# export WASMTIME_HOME="$HOME/.wasmtime"

# export PATH="$WASMTIME_HOME/bin:$PATH"

# bun completions
# [ -s "~/.bun/_bun" ] && source "~/.bun/_bun"
