require('vis')

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command("set tabwidth 4")
	vis:command("set numbers true")
	vis:command("set autoindent true")
	vis:command("set showspaces false")
	vis:command("set showstabs false")
	vis:command("set expandtab off")
	vis:command("set shell /usr/bin/env sh")
	vis:map(vis.modes.VISUAL," y", '"+y"')
	vis:map(vis.modes.NORMAL, " fm", function()
		vis:command("open .")
		vis:feedkeys("<C-w>k")
		vid:command("wq!")
		end, "")
end)

local model = require('plugins/vis-modal')

local autoclose = require('plugins/vis-autoclose')

--local colorizer = require('plugins/vis-colorizer')
--colorizer.three = false
--colorizer.six   = true

