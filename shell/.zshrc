run-tmux() {
    TERM="screen-256color"
    if [[ -z "$TMUX" ]]; then
        tmux -2
    fi
}

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="af-magic"
plugins=(git github nyan)
. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME="$HOME/.config"
export GOROOT="/usr/lib/go"
export GOPATH="/media/dev/go"
export PATH=$GOPATH/bin:$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim

alias ycmd='python2 /opt/YCMD/ycmd/ycmd --port=28608 --options_file=/opt/YCMD/default_settings.json'
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'

# run-tmux
