cp ~/.zshrc ~/.dotfiles
cp ~/.zprofile ~/.dotfiles
cp ~/.vimrc ~/.dotfiles
git add .
git commit -m "update dotfiles @ $(echo `date`)"
git push origin master
 
