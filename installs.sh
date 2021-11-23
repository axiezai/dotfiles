/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

 echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xihe/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install git thefuck tmux reattach-to-user-namespace fzf rbenv ripgrep

$(brew --prefix)/opt/fzf/install

# For agnoster zsh theme
git clone https://github.com/powerline/fonts
cd fonts
./install.sh
