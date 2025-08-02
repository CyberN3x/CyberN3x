local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

config.default_prog = {"tmux","new-session", "-A", "-s", "main"}
config.initial_cols = 150
config.initial_rows = 50
config.font_size = 12

config.colors = {
  foreground = "#FF4C4C",
  background = "#000000",
  cursor_bg = "#FF4C4C",
  selection_bg = "#550000",
  ansi = {"#000000", "#FF4C4C", "#44FF44", "#FFFF00", "#44FFFF", "#FF44FF", "#44FFFF", "#CCCCCC"},
  brights = {"#555555", "#FF6666", "#66FF66", "#FFFF66", "#66FFFF", "#FF66FF", "#66FFFF", "#FFFFFF"},
}

config.font = wezterm.font_with_fallback{
   {family = "JetBrainsMono Nerd Font", weight = "Medium"},
   "FiraCode Nerd Font",
   "Noto Color Emoji",
}

wezterm.on('format-tab-title', function(tab, tabs, panes, config, hover, max_width)
   local is_active = tab.is_active

   local background = is_active and '#030303' or '#2e0000'
   local foreground = is_active and '#f50505' or '#403e3e' 

   local edge_foreground = background
   local edge_background = foreground

   return {
      { Background = { Color = edge_foreground } },
      { Foreground = { Color = edge_background } };
      { Text = SOLID_LEFT_ARROW },
      { Background = { Color = background } },
      { Foreground = { Color = 'white' } },
      { Text = ' ' .. tab.active_pane.title .. ' ' },
      { Background = { Color = edge_foreground } },
      { Foreground = { Color = edge_background } },
      { Text = SOLID_RIGHT_ARROW },
   }
end)

return config
