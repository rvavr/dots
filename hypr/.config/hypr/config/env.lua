-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

local HOME = os.getenv("HOME")

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("DESKTOP_SESSION", "Hyprland")

-- nvidia
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("NVD_BACKEND", "direct")
hl.env("GSK_RENDERER", "ngl")

-- vrr / gsync
hl.env("__GL_VRR_ALLOWED", "1")
hl.env("__GL_GSYNC_ALLOWED", "1")

-- disable realtime priority setting by Hyprland, I have ananicy-cpp
-- hl.env("HYPRLAND_NO_RT", "1")

-- mini helper for apps, not necessary but does help sometimes
local XDG_STATE_HOME  = HOME .. "/.local/state" -- App related state files
local XDG_DATA_HOME   = HOME .. "/.local/share" -- App related data 
local XDG_CONFIG_HOME = HOME .. "/.config"      -- App related configuration files
local XDG_CACHE_HOME  = HOME .. "/.cache"       -- App related cache files

-- Global XDG environment variables 
hl.env("XDG_STATE_HOME",  XDG_STATE_HOME)
hl.env("XDG_DATA_HOME",   XDG_DATA_HOME)
hl.env("XDG_CONFIG_HOME", XDG_CONFIG_HOME)
hl.env("XDG_CACHE_HOME",  XDG_CACHE_HOME)

local XDG_DATA_DIRS = os.getenv("XDG_DATA_DIRS") or "/usr/local/share:/usr/share"

hl.env("XDG_DATA_DIRS", table.concat({
    XDG_DATA_DIRS,
    "/var/lib/flatpak/exports/share",
    HOME .. "/.local/share/flatpak/exports/share"
}, ":"))
