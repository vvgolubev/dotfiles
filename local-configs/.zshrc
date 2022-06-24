export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git github)
. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME="$HOME/.config"
export PATH="${HOME}/usr/bin:$PATH"
export PATH="$PATH:/home/vvgolubev/.cargo/bin"
export EDITOR=nvim
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'
alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
