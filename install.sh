# Brew
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xihe/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git thefuck tmux reattach-to-user-namespace fzf rbenv ripgrep ruby

$(brew --prefix)/opt/fzf/install

# For agnoster zsh theme
echo "Installing fonts for agnoster zsh theme"
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "Deleting fonts repo after installation"