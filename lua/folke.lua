require("tokyonight").setup({
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
})
