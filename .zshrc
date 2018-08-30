#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# 確認
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# 省略
alias v=vim
alias e=echo
alias th=touch

# コマンドラインから起動
alias atom='open -a /Applications/Atom.app'
alias subt='open -a /Applications/Sublime\ Text.app'
alias vsc='open -a /Applications/Visual\ Studio\ Code.app'

# git関連
alias g=git
alias gad='git add'
alias gc='git commit -m'
alias gl='git log --oneline'
alias gs='git status -sb'
alias gch='git checkout'
alias gbr='git branch'
PATH=/usr/local/git/bin:$PATH
export PATH

# vagrant関連
alias vs='vagrant status'
alias vu='vagrant up'
alias vh='vagrant halt'

# autocorrect無
alias bundle='nocorrect bundle'

# 設定即反映
alias szs='source ~/.zshrc'

# Preztoアップデート
alias preup='cd ~/.zprezto && git pull && git submodule update --init --recursive ; cd -'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# AWS
export AWS_REGION=ap-northeast-1

# ssh-agent
eval `ssh-agent`
ssh-add

# yarn
#export PATH="$PATH:`yarn global bin`"

#prettier
export PATH=$PATH:./node_modules/.bin

