vim.cmd([[
    highlight NvimTreeFolderIcon guifg=#FFFF00
    highlight NvimTreeOpenedFolderIcon guifg=#c6d0f5
    highlight NvimTreeEmptyFolderName guifg=#c6d0f5
    highlight NvimTreeOpenedFolderName guifg=#c6d0f5
    highlight NvimTreeFolderName guifg=#c6d0f5
]])

require("nvim-tree").setup({
	update_focused_file = {
		enable = true, -- Enables the sync with the current file
		update_cwd = true, -- Updates the current working directory
		ignore_list = {}, -- Files or folders to ignore for this feature
	},
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		centralize_selection = false,
		cursorline = true,
		debounce_delay = 15,
		side = "left",
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		adaptive_size = true,
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 30,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},
	renderer = {
		group_empty = true,
		icons = {
			web_devicons = {
				file = {
					enable = true,
					color = true,
				},
				folder = {
					enable = true,
					color = true,
				},
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "󰆤",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
			},
		},
	},
	filters = {
		dotfiles = false,
		git_ignored = false,
	},
})
