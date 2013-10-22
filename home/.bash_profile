alias ls="ls -G"
alias ll="ls -lG"

PATH="/usr/local/bin:$PATH"

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
