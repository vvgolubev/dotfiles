export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git github)
. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
