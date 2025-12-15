# Path
export CARGO_HOME="$HOME/.cargo"
export PATH="$PATH:$CARGO_HOME/bin"


# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export VISUAL=zed


# Colors
if [[ $- == *i* ]]; then
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
fi
