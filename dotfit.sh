git pull origin
cp ./.zshrc ~ &&
cp ./.zprofile ~ &&
cp ./.vimrc ~ &&
cd ~
shopt -s expand_alias
source ~/.zshrc
cd ~/.dotfiles
