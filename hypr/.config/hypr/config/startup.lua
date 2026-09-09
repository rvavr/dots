-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- these are based on a bazzite install

hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia")
	hl.exec_cmd("flatpak run com.github.wwmm.easyeffects --gapplication-service")
	hl.exec_cmd("flatpak run com.discordapp.Discord")
	hl.exec_cmd("steam")
end)
