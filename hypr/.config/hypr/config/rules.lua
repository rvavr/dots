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
    match = {
        class = "^steam$",
        title = "^notificationtoasts_%d+_desktop$",
    },
    float = true,
})

hl.window_rule({
    name = "browser",
    match = {
        class = "zen|helium",
    },

    workspace = 1,
})

hl.window_rule({
    name = "discord",
    match = {
        class = "moonlight-stable|(D|d)iscord",
    },

    workspace = "2 silent",
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
    match = { namespace = "selection|gsr-ui" },
	no_anim = true,
})
