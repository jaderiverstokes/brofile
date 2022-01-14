# just for the sisters ;)
```bash
# nuke
rm -rf ~/brofile
rm -rf ~/.vim

# dotfiles
git clone https://github.com/jaderiverstokes/brofile ~/brofile
ln -f ~/brofile/bash_profile ~/.bash_profile
ln -f ~/brofile/gitconfig    ~/.gitconfig
ln -f ~/brofile/tmux.conf    ~/.tmux.conf

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install yarn

# vim
git clone https://github.com/cooper-sloan/vimjob ~/.vim
ln ~/.vim/vimrc ~/.vimrc
brew install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PlugInstall +qall
pushd ~/.vim/plugged/coc.nvim; yarn install

# ag
brew install the_silver_searcher

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bash_profile
nvm install node
nvm install-latest-npm
```
