alias ls="ls -G"
alias ll="ls -lG"

export PATH="/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if [ -f $(brew --prefix)/bin/liquidprompt ]; then
  . $(brew --prefix)/bin/liquidprompt
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
