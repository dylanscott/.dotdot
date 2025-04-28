# prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_UPGRADE=1

eval "$(scmpuff init --shell=zsh --aliases=false)"

source ~/.zshfuncs

# aliases
alias gs="scmpuff_status"
alias ga="git add"
alias gap="git add -p"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias glg="git log --stat"
alias grs="git reset"
alias gp="git pull"
alias gd="git diff"
alias gdc="git diff --cached"
alias gb="git branch --sort=-committerdate"

# zplug
source ~/.zplug/init.zsh
zplug "lib/completion", from:oh-my-zsh
zplug "modules/prompt", from:prezto
zplug "modules/directory", from:prezto
zplug "modules/osx", from:prezto
zplug "jeffreytse/zsh-vi-mode"
zplug load

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# pipx
export PATH="$PATH:/Users/dylanscott/.local/bin"
