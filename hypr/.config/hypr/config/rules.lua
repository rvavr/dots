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



-- float rules are based on 2560x1440 screen
hl.window_rule({
	name = "floating explorer",
	match = {
	class = "dolphin|thunar",
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





-- workspace rules (in order of workspace)

hl.window_rule({
	name = "browser",
	match = {
	class = "zen|app.zen_browser.zen|helium|librewolf",
	},
	workspace = 1,
	no_screen_share = true,
})

hl.window_rule({
	name = "discord",
	match = {
	class = "moonlight-stable|(D|d)iscord",
	},
	workspace = "2 silent",
})

hl.window_rule({
	name = "games",
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
	name = "launchers",
	match = {
	class = "steam|com.adamcake.Bolt",
    },
	workspace = "4 silent",
})

hl.window_rule({
	name = "music",
	match = {
	class = "(S|s)potify|com.rafaelmardojai.Blanket",
	},
	workspace = "5 silent",
})


hl.layer_rule({
	name = "tools",
	match = { namespace = "selection|gsr-ui|rofi|noctalia-screenshot-region" },
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


-- to have persistent workspaces remove --'s below

--hl.workspace_rule({ workspace = "1", persistent = true, default_name = "browsers" })
--hl.workspace_rule({ workspace = "2", persistent = true, default_name = "chat" })
--hl.workspace_rule({ workspace = "3", persistent = true, default_name = "games" })
--hl.workspace_rule({ workspace = "4", persistent = true, default_name = "launchers" })
--hl.workspace_rule({ workspace = "5", persistent = true, default_name = "music" })
