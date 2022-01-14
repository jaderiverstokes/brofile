# just for the sisters ;)
```bash
# dotfiles
git clone https://github.com/jaderiverstokes/brofile ~/brofile
ln ~/brofile/bash_profile ~/.bash_profile
ln ~/brofile/gitconfig ~/.gitconfig
ln ~/brofile/tmux.conf ~/.tmux.conf

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install yarn

# vim
brew install neovim
nvim --headless +PlugInstall +qall
cd ~/.vim/plugged/coc.nvim
yarn install

# ag
brew install the_silver_searcher

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bash_profile
nvm install node
nvm install-latest-npm
```
