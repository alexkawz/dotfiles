#!/bin/bash
echo "Installing Gnu Stow"
brew install stow
echo "Installing JQ"
brew install jq
echo "Installing Neofetch"
brew install neofetch
echo "Installing aerospace"
brew install --cask nikitabobko/tap/aerospacerea
echo "Installing wezterm"
brew install --cask wezterm
echo "Installing Sketchybar"
brew install sketchybar
echo "Installing Janky Borders"
brew tap FelixKratz/formulae
brew install borders

echo "Stowing folders to .config"
stow aerospace
stow borders
stow sketchybar
stow wezterm

echo "Making sketchy bar plugins executable"
chmod +x ~/.config/sketchybar/colors.sh
chmod +x ~/.config/sketchybar/icons.sh
chmod +x ~/.config/sketchybar/items/apple.sh
chmod +x ~/.config/sketchybar/items/calendar.sh
chmod +x ~/.config/sketchybar/items/front_app.sh
chmod +x ~/.config/sketchybar/items/media.sh
chmod +x ~/.config/sketchybar/items/volume.sh
chmod +x ~/.config/sketchybar/items/battery.sh
chmod +x ~/.config/sketchybar/items/cpu.sh
chmod +x ~/.config/sketchybar/items/input_source.sh
chmod +x ~/.config/sketchybar/items/spaces.sh
chmod +x ~/.config/sketchybar/items/weather.sh
chmod +x ~/.config/sketchybar/plugins/aerospace.sh
chmod +x ~/.config/sketchybar/plugins/clock.sh
chmod +x ~/.config/sketchybar/plugins/icon_map_fn.sh
chmod +x ~/.config/sketchybar/plugins/volume_click.sh
chmod +x ~/.config/sketchybar/plugins/apple.sh
chmod +x ~/.config/sketchybar/plugins/cpu.sh
chmod +x ~/.config/sketchybar/plugins/media.sh
chmod +x ~/.config/sketchybar/plugins/weather.sh
chmod +x ~/.config/sketchybar/plugins/battery.sh
chmod +x ~/.config/sketchybar/plugins/front_app.sh
chmod +x ~/.config/sketchybar/plugins/space.sh
chmod +x ~/.config/sketchybar/plugins/wifi.sh
chmod +x ~/.config/sketchybar/plugins/calendar.sh
chmod +x ~/.config/sketchybar/plugins/get_input_source.sh
chmod +x ~/.config/sketchybar/plugins/space_windows.sh
chmod +x ~/.config/sketchybar/plugins/zen.sh
chmod +x ~/.config/sketchybar/plugins/change_windows.sh
chmod +x ~/.config/sketchybar/plugins/icon_map.sh
chmod +x ~/.config/sketchybar/plugins/volume.sh

echo "Starting Services"
brew services start borders
brew services start aerospace
brew services start sketchybar
