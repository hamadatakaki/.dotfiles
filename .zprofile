export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# anyenv path
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
export PATH="$HOME/.anyenv/envs/pyenv/shims:$PATH"

# cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# pipenvの設定
export PIPENV_VENV_IN_PROJECT=1

