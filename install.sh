echo "Running installation script";

echo "Installing dotfiles":

mv ~/.bash_profile ~/.bash_profile.bkp
ln -s ~/dotfiles/system/.bash_profile ~/.bash_profile

mv ~/.vimrc ~/.vimrc.bkp
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

mv ~/.vim ~/.vim.bkp
ln -s ~/dotfiles/vim/.vim ~/.vim

mv ~/.tmux.conf ~/.tmux.conf.bkp
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

echo "run: source ~/.bash_profile to complete instalation"

