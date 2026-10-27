-------------------------
--------Programs---------
-------------------------
local terminal = "kitty"
local menu = "rofi -show drun -config ~/.config/rofi/cyberpunk.rasi"
local browser = "firefox"
local mainMod = "SUPER"
local fileBrowser = "dolphin"

-------------------------
--------Monitors---------
-------------------------

hl.monitor({
   output =  "DP-1",
   mode = "2560x1440@240",
   position = "0x0",
   scale = 1,
})
hl.monitor({
   output = "DP-2",
   mode = "1920x1080@144",
   position = "2560x0",
   scale = 1, 
})


env = QT_QPA_PLATFORMTHEME,qt6ct   

------------------------
--------Auto Start------
------------------------

hl.on("hyprland.start", function()
   hl.exec_cmd("waybar")
   hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
   hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
   hl.exec_cmd("awww-daemon")
   hl.exec_cmd("awww img ~/Pictures/cyberpunk1.jpg --transition-type fade")
   hl.exec_cmd("steam")
   hl.exec_cmd("discord")
end)  


------------------------
-------Binds------------
------------------------

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + R",      hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + B",      hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + D",      hl.dsp.exec_cmd(fileBrowser))
-- Window control
hl.bind(mainMod .. " + Q",           hl.dsp.window.close())
hl.bind(mainMod .. " + X",           hl.dsp.exec_cmd("systemctl poweroff -i"))
hl.bind(mainMod .. " + S",           hl.dsp.exec_cmd("systemctl suspend"))
hl.bind(mainMod .. " + F",           hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(mainMod .. " + SHIFT + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SHIFT + P",   hl.dsp.window.pin())

-- Reload / exit
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exit())

-- ##########################################
-- ### FOCUS MOVEMENT
-- ##########################################
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Vim-style
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- ##########################################
-- ### MOVE WINDOWS
-- ##########################################
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i= 1, 10 do
   local key = i % 10
   hl.bind(mainMod .. " + " .. key, hl.dsp.focus({workspace = i}))
   hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({workspace = i})) 
end
------------------------
-------Decorations------
------------------------

hl.config({
  general = {
    border_size = 3,
    col = {
      active_border   = { colors = {"rgba(ff4c4cff)", "rgba(44ffffff)"}, angle = 45 },
      inactive_border = "rgba(2e0000ff)",
    },
  },
})

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.0} } })
hl.animation({ leaf = "windows",    enabled = true, speed = 5, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "fade",       enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })

------------------------
-----Window Rule--------
------------------------

hl.window_rule({ match = { class = "discord" }, workspace = "3 silent", monitor = "DP-2" })
hl.window_rule({ match = { class = "steam" }, workspace = "4 silent" })
hl.window_rule({ match = { class = "obsidian"}, workspace = "5 slient", monitor = "DP-1" })
