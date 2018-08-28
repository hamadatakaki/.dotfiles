git pull origin
echo "pulling OK"
cd ~
rm ~/.zshrc
mv ~/.dotfiles/.zshrc ~/.zshrc
cp ~/.dotfiles/.zprofile ~
cp ~/.dotfiles/.vimrc ~
source ~/.zshrc
cd ~/.dotfiles

