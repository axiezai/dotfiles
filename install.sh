# Oh-my-zsh
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Brew
echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git thefuck tmux reattach-to-user-namespace fzf rbenv ripgrep tree imagemagick tldr

# rbenv setup:
rbenv init

$(brew --prefix)/opt/fzf/install

# JVM manager Coursier
curl -fL https://github.com/VirtusLab/coursier-m1/releases/latest/download/cs-aarch64-apple-darwin.gz | gzip -d > cs

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

