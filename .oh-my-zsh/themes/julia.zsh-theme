PROMPT='$(git_prompt_info)'
PROMPT+="%{$fg_bold[blue]%}%c "
PROMPT+='%(?:%{$fg_bold[green]%}%1{➜%}:%{$fg_bold[red]%}%1{➜%}) '
PROMPT+="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}· "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}· "
