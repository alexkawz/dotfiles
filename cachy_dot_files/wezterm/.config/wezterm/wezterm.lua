-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hodl the config
local config = wezterm.config_builder()

config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 14
config.window_decorations = "NONE"

config.enable_tab_bar = false


config.color_scheme = 'Everforest Dark (Gogh)'

config.window_background_opacity = 0.9
-- keep adding config options


return config
