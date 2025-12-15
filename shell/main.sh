__load_shell_config() {
  local base_dir
  if [ -n "$BASH_SOURCE" ]; then
    base_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  elif [ -n "$ZSH_VERSION" ]; then
    base_dir="$( cd "$( dirname "${(%):-%x}" )" && pwd )"
  else
    # Fallback or error handling for other shells
    base_dir="$( cd "$( dirname "$0" )" && pwd )"
  fi

  source "$base_dir/env.sh"

  # guard for interactive-only shells
  [[ $- != *i* ]] && return

  source "$base_dir/aliases.sh"
  source "$base_dir/functions.sh"
  source "$base_dir/prompt.sh"
}

__load_shell_config
unset -f __load_shell_config
