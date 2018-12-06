alias vim=nvim
alias nlp='pushd ~/go/src/tableau/nlp/nlpcore'
alias ll='ls -larth'
alias less='less -R'
alias infra='pushd ~/code/autodeployment_cjameson_mac'
alias autodeployment='pushd ~/code/autodeployment_cjameson_mac'

. ~/.secret_values
function sandbox() {
  lpass show $sandbox_lpass | tail -1 | awk '{ print $2 }'
}

export -f sandbox

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
