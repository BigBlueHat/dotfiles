alias ls="ls -G"
alias ll="ls -lG"

PATH="/usr/local/bin:$PATH"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if [ -f $(brew --prefix)/bin/liquidprompt ]; then
  . $(brew --prefix)/bin/liquidprompt
fi
