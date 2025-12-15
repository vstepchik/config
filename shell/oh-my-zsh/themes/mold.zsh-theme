if [[ "$UID" -eq 0 ]]; then NCOLOR="red"; else NCOLOR="magenta"; fi

PROMPT='%{$fg[$NCOLOR]%}%~%{$reset_color%}\
$(git_prompt_info) \
%(?..%{$fg[red]%}↵%? )\
%(?:%{$fg[green]%}»:%{$fg[red]%}»)%{$reset_color%} '

# Secondary prompt (PS2) - the prompt shown when the shell expects more input to complete a command
PROMPT2='%{$fg[yellow]%}… %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}○%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}±%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
