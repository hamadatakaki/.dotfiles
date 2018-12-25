# 適当な諸設定
# alias
alias ls="ls -G"
alias lsd="ls -d .*"
alias lsnd="ls -nd .*"
alias echo256colors='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'

# 環境変数
export LSCOLORS="CxDxbxdxexegedabagacad"

# optionのsetting
setopt AUTO_CD
setopt no_beep
setopt correct


# 補完プラグインの設定
# zplugの設定
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-syntax-highlighting"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load

# compinitの設定
autoload -U compinit; compinit -u

# zsh-completionsの設定
if [ -e /usr/local/share/zsh-completions ]; then fpath=(/usr/local/share/zsh-completions $fpath) ;fi


# PROMPTの設定
# vcs_infoの用意
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{221}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{196}+"
zstyle ':vcs_info:*' formats "%F{027}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# vertualenvの名前の位置を変更する
export VIRTUAL_ENV_DISABLE_PROMPT=1
python_venv_str() {
  if [ "`basename \"$VIRTUAL_ENV\"`" = "" ]; then ;
    echo ""
  else 
    echo "[`basename \"$VIRTUAL_ENV\"`]"
  fi
}

# PROMPT系環境変数の設定
PROMPT=$'%(?.%F{032}<OK>%f.%F{001}<BAD>%f) %F{013}%m on %C%f %F{015}@%*%f ${vcs_info_msg_0_} `python_venv_str`
%F{032}>>%f '
RPROMPT=$'%F{012}%d%f'

# RPROMPTの削除・復帰用のコマンドを定義
alias delrprompt="RPROMPT=''"
alias rebuildrprompt="RPROMPT=$'%F{074}%d%f %F{220}@ %*%f'"


# bindkeyの設定
bindkey -v
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^k" history-beginning-search-backward-end
bindkey "^j" history-beginning-search-forward-end


# history関連の設定
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY


# .zprofileが読み込まれない謎への対策
source ~/.zprofile


# Python周りの設定


# VisualStudioCode周りの設定
alias code="code ."


# nocorrect系の設定
alias yarn="nocorrect yarn"
alias bat="nocorrect bat"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
#[[ -f /Users/hamada/develop/sls/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/hamada/develop/sls/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
#[[ -f /Users/hamada/develop/sls/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/hamada/develop/sls/node_modules/tabtab/.completions/sls.zsh
