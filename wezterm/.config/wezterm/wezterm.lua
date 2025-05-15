local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.keys = require('keys')
config.color_scheme = 'Tango (terminal.sexy)'
-- config.colors = require 'themes/customColors'

config.hide_tab_bar_if_only_one_tab = true
-- config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.window_decorations = "NONE"

config.font = wezterm.font 'JetBrains Mono'
config.font_size = 14

config.scrollback_lines = 10000


return config
