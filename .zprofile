eval "$(/opt/homebrew/bin/brew shellenv)"
export GPG_TTY=$(tty)

path+=('/opt/homebrew/opt/python@3.9/libexec/bin')
export PATH

ldflags+=('-L/opt/homebrew/opt/openssl@3/lib')
export LDFLAGS
cppflags+=('-I/opt/homebrew/opt/openssl@3/include')
export CPPFLAGS

export AWS_PROFILE=dev

alias mc="pushd ~/workspace/monte-carlo-data"

autoload -Uz compinit && compinit
