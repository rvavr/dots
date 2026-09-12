-- https://wiki.hypr.land/Configuring/Basics/Binds/

-- Default programs
local terminal    = "kitty"
local floatTerm   = "kitty -T floating-kitty"
local fileManager = "dolphin"
local pass        = "noctalia msg panel-toggle launcher '/pass '"
local menu        = "noctalia msg panel-toggle launcher"
local browser     = "xdg-open http://"
local bar         = "pkill waybar || waybar"
local ipc         = "noctalia msg "

-- Main Modifier & keybinds
local mainMod = "SUPER"

-- defaults
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(floatTerm)) -- floating terminal by default
hl.bind(mainMod .. " + SHIFT+ Return", hl.dsp.exec_cmd(terminal)) -- tiling terminal with shift
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager)) -- file manager edit rules to make float if you use a different one
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))  -- typical launcher
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(pass)) -- I use password-store as pw-manager, it's amazing
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser)) -- always opens default browser via using xdg-open, go to rules to configure
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(ipc .. "panel-toggle wallpaper")) -- typical wallpaper switcher
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(ipc .. "screenshot-region")) -- same hotkey from windows for selecting region
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard")) -- same hotkey from windows for clipboard management
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(ipc .. "settings-toggle")) -- same hotkey from windows but for Noctalia panel settings, can set to something like kitty -T floating-kitty -e nvim ~/.config/hypr/config/ if you want to configure hypr instead
hl.bind(mainMod .. " + BackSpace", hl.dsp.exec_cmd(ipc .. "notification-clear-history")) -- personal bind to clear notifications
hl.bind(mainMod .. " + SHIFT + BackSpace", hl.dsp.exec_cmd(ipc .. "clipboard-clear")) -- personal bind to clear clipboard
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen" , action = "toggle" })) -- switch these two for something more normal
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "maximized" , action = "toggle" })) -- switch these two for something more normal
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd(ipc .. "window-switcher")) -- windows like "alt tab" but on super
hl.bind("ALT + TAB", hl.dsp.focus({ workspace = "previous" })) -- quickly switch to last workspace, my preferred way of going to last workspace, pressing again returns you
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close()) -- closes window, can change this bind if you desire, probably will add a hard kill version later with SHIFT Q

hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd(ipc .. "panel-toggle session")) -- power menu

--hl.bind("code:66", hl.dsp.exec_cmd(ipc .. "mic-mute")) -- caps lock key (which is unbound due to hating that key) to mic mute, giving it a better purpose

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(ipc .. "panel-toggle raycursive/discord-voice:panel"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [1-5]
-- Move active window to a workspace with mainMod + SHIFT + [1-5]
for i = 1, 5 do
    hl.bind(mainMod .. " + " .. i,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. i,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Using dial on keyboard to control these keys instead, default binds are below it
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("playerctl next"),       { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("playerctl play-pause"),     { locked = true, repeating = true })

-- hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
-- hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
-- hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })


-- I've never needed these keys but they can be useful on a laptop
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
