-- https://wiki.hypr.land/Configuring/Basics/Monitors/

-- hyprctl monitors all (this is how you see what your default monitor is)
local default_monitor = "DP-2"

hl.monitor({
    output   = default_monitor,
    mode     = "2560x1440@180",
    position = "0x0",
    scale    = "1",
	bitdepth = 10,
	vrr 	 = 1,
})
