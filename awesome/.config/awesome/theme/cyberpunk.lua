-- Save this as ~/.config/awesome/theme/cyberpunk.lua

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

-- Cyberpunk Color Palette
theme.bg_normal     = "#0a0a0a"  -- Deep black background
theme.bg_focus      = "#1a1a1a"  -- Slightly lighter for focused elements
theme.bg_urgent     = "#cc0033"  -- Red for urgent notifications
theme.bg_minimize   = "#2a2a2a"  -- Dark gray for minimized
theme.bg_systray    = "#0a0a0a"  -- System tray background

theme.fg_normal     = "#ffffff"  -- White text
theme.fg_focus      = "#ff0040"  -- Neon red for focused text
theme.fg_urgent     = "#ffffff"  -- White text on urgent background
theme.fg_minimize   = "#666666"  -- Gray for minimized text

-- Borders
theme.useless_gap   = dpi(4)     -- Gap between windows
theme.border_width  = dpi(2)     -- Border thickness
theme.border_normal = "#2a2a2a"  -- Dark gray border for unfocused
theme.border_focus  = "#ff0040"  -- Neon red border for focused
theme.border_marked = "#00ffff"  -- Cyan for marked windows

-- Titlebar colors
theme.titlebar_bg_focus  = "#1a1a1a"
theme.titlebar_bg_normal = "#0a0a0a"
theme.titlebar_fg_focus  = "#ff0040"
theme.titlebar_fg_normal = "#ffffff"

-- Menu colors
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(150)
theme.menu_bg_normal = "#0a0a0a"
theme.menu_bg_focus  = "#1a1a1a"
theme.menu_fg_normal = "#ffffff"
theme.menu_fg_focus  = "#ff0040"
theme.menu_border_color = "#ff0040"
theme.menu_border_width = dpi(1)

-- Notification styling
theme.notification_bg = "#0a0a0a"
theme.notification_fg = "#ffffff"
theme.notification_border_color = "#ff0040"
theme.notification_border_width = dpi(2)
theme.notification_margin = dpi(10)
theme.notification_opacity = 0.9

-- Taglist (workspace indicators)
theme.taglist_bg_focus = "#ff0040"
theme.taglist_fg_focus = "#0a0a0a"
theme.taglist_bg_urgent = "#cc0033"
theme.taglist_fg_urgent = "#ffffff"
theme.taglist_bg_occupied = "#2a2a2a"
theme.taglist_fg_occupied = "#ffffff"
theme.taglist_bg_empty = "transparent"
theme.taglist_fg_empty = "#666666"

-- Tasklist (window list in taskbar)
theme.tasklist_bg_focus = "#1a1a1a"
theme.tasklist_fg_focus = "#ff0040"
theme.tasklist_bg_urgent = "#cc0033"
theme.tasklist_fg_urgent = "#ffffff"
theme.tasklist_bg_normal = "transparent"
theme.tasklist_fg_normal = "#ffffff"

-- Wibar (status bar)
theme.wibar_bg = "#0a0a0aCC"  -- Semi-transparent background
theme.wibar_fg = "#ffffff"
theme.wibar_border_color = "#ff0040"
theme.wibar_border_width = dpi(1)
theme.wibar_height = dpi(24)

-- Font
theme.font = "Hack 10"  -- Monospace font for cyberpunk feel
-- Alternative fonts:
-- theme.font = "JetBrains Mono 10"
-- theme.font = "Source Code Pro 10"

-- Icons (create simple colored squares if you don't have custom icons)
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Layout icons with cyberpunk colors
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Titlebar button colors
theme.titlebar_close_button_normal = "#2a2a2a"
theme.titlebar_close_button_focus  = "#cc0033"
theme.titlebar_minimize_button_normal = "#2a2a2a"
theme.titlebar_minimize_button_focus  = "#ff3366"
theme.titlebar_maximized_button_normal = "#2a2a2a"
theme.titlebar_maximized_button_focus  = "#00ffff"

-- Hotkeys popup
theme.hotkeys_bg = "#0a0a0a"
theme.hotkeys_fg = "#ffffff"
theme.hotkeys_border_color = "#ff0040"
theme.hotkeys_modifiers_fg = "#00ffff"
theme.hotkeys_label_bg = "#1a1a1a"
theme.hotkeys_label_fg = "#ff0040"

return theme
