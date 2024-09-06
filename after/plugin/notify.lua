local notify = require("notify")

notify("Welcome back Urizen")

vim.notify = notify
notify.setup({
	-- Animation style (see below for details)
	animation_style = "ease",
	max_width = 80,
	max_height = 15,
	on_open = function()
		vim.cmd("mode")
	end,
	on_close = function()
		vim.cmd("mode")
	end,
	background_colour = "NotifyBackground",
	fps = 30,
	icons = {
		DEBUG = "",
		ERROR = "",
		INFO = "",
		TRACE = "✎",
		WARN = "",
	},
	level = 2,
	minimum_width = 50,
	render = "default",
	stages = "fade_in_slide_out",
	time_formats = {
		notification = "%T",
		notification_history = "%FT%T",
	},
	timeout = 5000,
	top_down = true,
})
