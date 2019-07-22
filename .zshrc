source ~/.zplug/init.zsh

# powerline-shellの設定
zplug "b-ryan/powerline-shell"

function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in ${precmd_functions[@]}; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi


# エイリアスの設定
alias gc='git checkout'
alias gcd='git checkout develop'
alias gcm='git checkout master'
alias la='ls -a'
alias ll='ls -l'
alias gc='git checkout'
alias gcb='git checkout -b'
alias pushfor='git push --force-with-lease origin'
alias push='git push origin'
alias fe='git fetch'
alias gs='git status'
alias gap='git add -p'
alias gcom='git commit'
alias gd='git diff'
alias gca='git commit -am'
alias vz='vi ~/.zshrc'
alias sz='source ~/.zshrc'
alias clean='rm -rf ~/Library/Developer/Xcode/DerivedData'
alias work='cd workspace/03_work'
alias oshidori='cd workspace/02_Swift/01_Oshidori/Oshidori'
alias tips='cd workspace/02_Swift/00_tips'
alias movie='xcrun simctl io booted recordVideo'

# 補完
autoload -Uz compinit
compinit

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリーに重複を表示しない
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd

# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンドミスを修正
setopt correct
