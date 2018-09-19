export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# cargoにPATHを通す
export PATH="$HOME/.cargo/bin:$PATH"

# rbenvの設定
eval "$(rbenv init -)"

export PATH="${HOME}/.sbtenv/bin:${PATH}"
eval "$(sbtenv init -)"

export PATH="${HOME}/.scalaenv/bin:${PATH}"
eval "$(scalaenv init -)"
