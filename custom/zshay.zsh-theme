# https://jsfiddle.net/seport/shrovLgf/embedded/result/
# prompt expansion https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html#Shell-state
#
# bg_dark="#1f2335"
# bg="#24283b"
# bg_highlight="#292e42"
# terminal_black="#414868"
# fg="#c0caf5"
# fg_dark="#a9b1d6"
# fg_gutter="#3b4261"
# dark3="#545c7e"
# comment="#565f89"
# dark5="#737aa2"
# blue0="#3d59a1"
blue="#7aa2f7"
# cyan="#7dcfff"
# blue1="#2ac3de"
# blue2="#0db9d7"
# blue5="#89ddff"
# blue6="#B4F9F8"
blue7="#394b70"
magenta="#bb9af7"
# magenta2="#ff007c"
# purple="#9d7cd8"
# orange="#ff9e64"
yellow="#e1af68"
# yellow1="#705734"
# green="#9ece6a"
# green1="#73daca"
# green2="#41a6b5"
# teal="#1abc9c"
red="#f7768e"
# red1="#db4b4b"
# %U underline mode           ﰙ   


PROMPT='%F{$blue%}%~%{$reset_color%} $(git_prompt_info)'$'\n' # top row
PROMPT+="%(?:%F{$magenta%} :%F{$red%} )" # prompt
PROMPT+="%{$reset_color%}%" # reset colors after arrow
# RPROMPT='%T ✗'
# PROMPT+='%{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{$blue7}%}%F{$blue7}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{$blue}%}%F{$yellow%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{$blue}%}"


