echo "Installing yabai and skhc..."
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd

echo "Installing sketchybar dependencies..."
brew tap FelixKratz/formulae
brew install sketchybar
brew install gh
brew install jq
brew install --cask spotify

# fonts
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.5/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

