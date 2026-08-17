-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
	name = "floating image viewer",
	match = {
		class = "imv",
	},
		float = true,
})

hl.window_rule({
	name = "floating explorer",
	match = {
		class = "thunar",
	},
		size = {1550, 1000},
		float = true,
})

hl.window_rule({
	name = "floating terminal",
	match = {
		title = "floating-kitty",
	},
		size = {1550, 1000},
		float = true,
})

hl.window_rule({
    name = "Picture in picture",
    match = {
        title = "Picture-in-Picture",
	},
        size = {1600, 900},
        float = true,
})

hl.window_rule({
    name = "Mpv",
    match = {
		class = "mpv",
    },
	float = true,
})

hl.window_rule({
    match = {
        class = "^steam$",
        title = "^notificationtoasts_%d+_desktop$",
    },
    float = true,
})

hl.window_rule({
    name = "browser",
    match = {
        class = "zen|helium|librewolf",
    },

    workspace = 1,
--    no_screen_share = true,
})

hl.window_rule({
    name = "discord",
    match = {
        class = "moonlight-stable|(D|d)iscord",
    },

    workspace = "2 silent",
--    no_screen_share = true,
})

hl.window_rule({
    name = "discord overlay",
	match = {
		class = "orbolay",
	},

	float = true,
	fullscreen = true,
	pin = true,
	no_focus = true,
	no_anim = true,
	no_blur = true,
	no_shadow = true,
    border_size = 0,
})

hl.window_rule({
    name = "launchers",
    match = {
        class = "steam|com.adamcake.Bolt",
    },

    workspace = "4 silent",
})

hl.window_rule({
    name = "proton xwayland",
    match = {
        class = "^steam_app_.*$",
    },

    workspace = 3,
    render_unfocused = true,
    fullscreen = true,
	no_blur = true,
	no_anim = true,
	no_shadow = true,
})

hl.window_rule({
    name = "others / proton wayland",
    match = {
        class = "t-engine|net-runelite-client-RuneLite|VampireSurvivors.exe|orionclient-win64-shipping.exe|discovery-d.exe",
    },

    workspace = 3,
    render_unfocused = true,
    fullscreen = true,
	no_blur = true,
	no_anim = true,
	no_shadow = true,
})

hl.window_rule({
    name = "music",
	match = {
		class = "(S|s)potify|com.rafaelmardojai.Blanket",
	},

	workspace = "9 silent",
})

hl.window_rule({
	name = "terminal music player",
	match = {
		title = "termusic",
    },

    workspace = "9 silent",
})

hl.layer_rule({
    name = "tools",
    match = { namespace = "selection|gsr-ui|rofi" },
	no_anim = true,
	blur = false,
	no_screen_share = true,
})

-- Noctalia Settings
hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    size = { 1080, 920 },
})


hl.workspace_rule({ workspace = "1", persistent = true, default_name = "browsers" })
hl.workspace_rule({ workspace = "2", persistent = true, default_name = "chat" })
hl.workspace_rule({ workspace = "3", persistent = true, default_name = "games" })
hl.workspace_rule({ workspace = "4", persistent = true, default_name = "launchers" })
hl.workspace_rule({ workspace = "5", persistent = true, default_name = "wallpaper" })
hl.workspace_rule({ workspace = "6", persistent = true, default_name = "sandbox" })
hl.workspace_rule({ workspace = "7", persistent = true, default_name = "audiowork" })
hl.workspace_rule({ workspace = "8", persistent = true, default_name = "misc" })
hl.workspace_rule({ workspace = "9", persistent = true, default_name = "music" })
