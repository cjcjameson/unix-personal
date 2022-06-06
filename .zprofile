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

# https://dev.to/cassidoo/customizing-my-zsh-prompt-3417
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='# %F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f
; '
