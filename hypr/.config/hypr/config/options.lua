-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 15,
        border_size = 2,
        col = {
            active_border   = "rgba(bb9af7ee)",
            inactive_border = "rgba(595959aa)",
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },

    decoration = {
        rounding       = 8,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
        blur = {
            enabled   = true,
            size      = 3,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
    dwindle = {
        preserve_split = true, -- You probably want this
    },

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
    master = {
        new_status = "master",
    },

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
    scrolling = {
        fullscreen_on_one_column = true,
    },

    misc = {
        force_default_wallpaper = 1, 
        disable_hyprland_logo   = true, 
		on_focus_under_fullscreen = 2, -- 0 ignores, 1 takes over, 2 unfullscreens/unmaximizes
		vrr = 2, -- 0 off, 1 on, 2 fullscreen only, 3 fullscreen with video/game content
		enable_anr_dialog = false, -- disables app not responding
		render_unfocused_fps = 30
    },

	xwayland = {
        enabled = true,
        force_zero_scaling = true,
    },

	binds = {
        workspace_back_and_forth = true,
        movefocus_cycles_fullscreen = true,
    },

    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "caps:none",
        kb_rules   = "",
		repeat_rate = 35,
		repeat_delay = 400,
        follow_mouse = 1,
		accel_profile = "flat",
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
        },
    },

    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

})
