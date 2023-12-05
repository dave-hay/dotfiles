# Set fzf default command to use fd for input (if fd exists)
export FZF_DEFAULT_COMMAND='fd --type f'

# Enable per-command history for fzf. This allows you to have a separate history for each command.
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Enable fzf in vim
# if command -v fzf > /dev/null 2>&1; then
#   set -o vi
#   bind -m vi-command '"\e[A": history-search-backward'
#   bind -m vi-command '"\e[B": history-search-forward'
#   bind -m vi-insert '"\e[A": history-search-backward'
#   bind -m vi-insert '"\e[B": history-search-forward'
# fi

# Set fzf colors to match solarized dark theme
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
