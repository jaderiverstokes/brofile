# nuke
cd ~
sudo rm -rf ~/brofile
sudo rm -rf ~/.vim
sudo rm ~/.vimrc
git clone git@github.com:jaderiverstokes/brofile.git ~/brofile
git clone git@github.com:jaderiverstokes/vimjob.git ~/.vim


# dotfiles
ln -f ~/brofile/bash_profile ~/.bash_profile
ln -f ~/brofile/gitconfig    ~/.gitconfig
ln -f ~/brofile/tmux.conf    ~/.tmux.conf

# homebrew
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install yarn
brew install tmux
brew install google-cloud-sdk
brew install --cask spotify
brew install --cask firefox
brew install --cask google-chrome

# vim
git clone https://github.com/cooper-sloan/vimjob ~/.vim
ln ~/.vim/vimrc ~/.vimrc
brew install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
touch ~/.config/nvim/init.vim
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after' >> ~/.config/nvim/init.vim
echo 'let &packpath=&runtimepath' >> ~/.config/nvim/init.vim
echo 'source ~/.vimrc' >> ~/.config/nvim/init.vim
nvim --headless +PlugInstall +qall
pushd ~/.vim/plugged/coc.nvim
yarn install
popd

# ag
brew install the_silver_searcher

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bash_profile
nvm install node
nvm install-latest-npm

# xcode
xcode-select --install
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -license accept

# brofile in effect
source ~./bash_profile
