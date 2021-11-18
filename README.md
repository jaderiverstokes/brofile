# brofile
```bash
git clone https://github.com/cooper-sloan/brofile ~/brofile
ln ~/brofile/bash_profile ~/.bash_profile
ln ~/brofile/gitconfig ~/.gitconfig
ln ~/brofile/tmux.conf ~/.tmux.conf
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/Cooper/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install neovim
brew install yarn
nvim --headless +PlugInstall +qall
cd ~/.vim/plugged/coc.nvim
yarn install


# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
# Adds nvm to path
source ~/.bash_profile
nvm install node
nvm install-latest-npm


# Ag
brew install the_silver_searcher

```
