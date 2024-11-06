# Oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Brew
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git
brew install thefuck
brew install tmux
brew install reattach-to-user-namespace
brew install ripgrep
brew install tree
brew install imagemagick
brew install tldr 
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

# rbenv setup:
brew install rbenv
rbenv init

brew install fzf
$(brew --prefix)/opt/fzf/install

# JVM manager Coursier
# use brew for might be better?
brew install coursier/formulas/coursier
cs setup

# Fonts
# For agnoster zsh theme
echo "Installing fonts for agnoster zsh theme"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Deleting fonts repo after installation"

# Rust
echo "Install rust"
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh

# miniforge for python envs
brew install miniforge
