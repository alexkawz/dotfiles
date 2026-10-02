# CachyOS dotfiles

GNU Stow packages for the CachyOS Hyprland (Lua config) + Noctalia setup, themed Everforest.

| Package      | Target                  | What it holds                                         |
| ------------ | ----------------------- | ----------------------------------------------------- |
| `hypr`       | `~/.config/hypr`        | Hyprland Lua config (binds, monitors, rules, colors)  |
| `noctalia`   | `~/.config/noctalia`    | Bar/shell config and the `Everforest` custom palette  |
| `wallpapers` | `~/.config/wallpapers`  | Forest wallpaper                                      |
| `wezterm`    | `~/.config/wezterm`     | WezTerm config (Everforest Dark)                      |

## Install

```sh
sudo pacman -S stow

# move the stock configs out of the way so stow can link
mkdir -p ~/.config-backup
mv ~/.config/hypr ~/.config/noctalia ~/.config-backup/

cd ~/dotfiles/cachy_dot_files
stow -t ~ hypr noctalia wallpapers wezterm

hyprctl reload
noctalia msg config-reload
# Noctalia remembers the last wallpaper in ~/.local/state, which wins over config.toml
noctalia msg wallpaper-set ~/.config/wallpapers/forest-background-4k.jpg
```

Wallpaper is drawn by Noctalia, so hyprpaper is not needed (running both would fight over the background).
