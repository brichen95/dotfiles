echo "Copying dotfiles to ~/"

cp .aliases-bash ~/
cp .bashrc ~/
cp .tmux.conf ~/
cp .vimrc ~/

echo "Copying vim colors..."
mkdir ~/.vim/
cp vim-colors/* ~/.vim/colors

echo "Sourcing files..."
source ~/.aliases-bash
source ~/.bashrc

echo "Done!"
