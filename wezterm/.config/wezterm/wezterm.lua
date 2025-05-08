-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hodl the config
local config = wezterm.config_builder()

--Comment out for mac
config.font = wezterm.font("CaskaydiaCove Nerd Font Mono")
config.font_size = 14

-- Comment out for linux
-- config.font = wezterm.font("CaskaydiaMono Nerd Font")
--config.font_size = 18

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.color_scheme = 'Everforest Dark (Gogh)'

config.window_background_opacity = 0.9
-- keep adding config options


return config
