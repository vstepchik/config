if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="magenta"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[$NCOLOR]%}%~%{$reset_color%}\
$(git_prompt_info) \
%(?:%{$fg[green]%}:%{$fg[red]%})%(!.#.»)%{$reset_color%} '

PROMPT2='%{$fg[yellow]%}…%{$reset_color%}'
# commented-out the PRS1 as it sometimes causes issues in terminal rendering
#RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}±%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
