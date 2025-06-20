
# read zshrc contents
# if [ -r ~/.zshrc ]; then
#     source ~/.zshrc
# fi

# Setting PATH for Python 3.9
# The original version is saved in .zprofile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
# export PATH
# brew unlink python@3.9
# brew link --force python@3.10


eval "$(/usr/local/bin/brew shellenv)"

# export PATH="$HOME/scripts:$PATH"
export PATH="$HOME/dotfiles/scripts:$PATH"

# Created by `pipx` on 2025-05-09 19:50:06
export PATH="$PATH:/Users/davidhay/.local/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
