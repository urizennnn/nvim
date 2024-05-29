local bufferline = require("bufferline")
bufferline.setup({
	options = {
		mode = "tabs",
		style_preset = bufferline.style_preset.default,
		numbers = "ordinal",
		buffer_close_icon = "󰅖",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 18,
		max_prefix_length = 15,
		truncate_names = true,
		tab_size = 18,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "Nvimtree",
				text = "   File Explorer",
				separator = true,
				text_align = "left",
			},
		},
		separator_style = "slant",
		diagnostics_indicator = function(_, _, diagnostics_dict)
			local s = " "
			for e, n in pairs(diagnostics_dict) do
				local sym = e == "error" and " " or (e == "warning" and " " or "")
				s = s .. n .. sym
			end
			return s
		end,
		color_icons = true,
		get_element_icon = function(element)
			local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
			return icon, hl
		end,
		show_close_icon = true,
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		always_show_bufferline = true,
		auto_toggle_bufferline = true,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
