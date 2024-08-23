require("dashboard").setup({
	hide = {
		statusline = false,
	},
	config = {
		header = {
			[[]],
			[[UUUUUUUU     UUUUUUUURRRRRRRRRRRRRRRRR   IIIIIIIIIIZZZZZZZZZZZZZZZZZZZEEEEEEEEEEEEEEEEEEEEEENNNNNNNN        NNNNNNNN]],
			[[U::::::U     U::::::UR::::::::::::::::R  I::::::::IZ:::::::::::::::::ZE::::::::::::::::::::EN:::::::N       N::::::N]],
			[[U::::::U     U::::::UR::::::RRRRRR:::::R I::::::::IZ:::::::::::::::::ZE::::::::::::::::::::EN::::::::N      N::::::N]],
			[[UU:::::U     U:::::UURR:::::R     R:::::RII::::::IIZ:::ZZZZZZZZ:::::Z EE::::::EEEEEEEEE::::EN:::::::::N     N::::::N]],
			[[ U:::::U     U:::::U   R::::R     R:::::R  I::::I  ZZZZZ     Z:::::Z    E:::::E       EEEEEEN::::::::::N    N::::::N]],
			[[ U:::::D     D:::::U   R::::R     R:::::R  I::::I          Z:::::Z      E:::::E             N:::::::::::N   N::::::N]],
			[[ U:::::D     D:::::U   R::::RRRRRR:::::R   I::::I         Z:::::Z       E::::::EEEEEEEEEE   N:::::::N::::N  N::::::N]],
			[[ U:::::D     D:::::U   R:::::::::::::RR    I::::I        Z:::::Z        E:::::::::::::::E   N::::::N N::::N N::::::N]],
			[[ U:::::D     D:::::U   R::::RRRRRR:::::R   I::::I       Z:::::Z         E:::::::::::::::E   N::::::N  N::::N:::::::N]],
			[[ U:::::D     D:::::U   R::::R     R:::::R  I::::I      Z:::::Z          E::::::EEEEEEEEEE   N::::::N   N:::::::::::N]],
			[[ U:::::D     D:::::U   R::::R     R:::::R  I::::I     Z:::::Z           E:::::E             N::::::N    N::::::::::N]],
			[[ U::::::U   U::::::U   R::::R     R:::::R  I::::I  ZZZ:::::Z     ZZZZZ  E:::::E       EEEEEEN::::::N     N:::::::::N]],
			[[ U:::::::UUU:::::::U RR:::::R     R:::::RII::::::IIZ::::::ZZZZZZZZ:::ZEE::::::EEEEEEEE:::::EN::::::N      N::::::::N]],
			[[  UU:::::::::::::UU  R::::::R     R:::::RI::::::::IZ:::::::::::::::::ZE::::::::::::::::::::EN::::::N       N:::::::N]],
			[[    UU:::::::::UU    R::::::R     R:::::RI::::::::IZ:::::::::::::::::ZE::::::::::::::::::::EN::::::N        N::::::N]],
			[[      UUUUUUUUU      RRRRRRRR     RRRRRRRIIIIIIIIIIZZZZZZZZZZZZZZZZZZZEEEEEEEEEEEEEEEEEEEEEENNNNNNNN         NNNNNNN]],
			[[]],
		},
		center = {
			{ action = "ene | startinsert", desc = "New File", icon = " ", key = "n" },
			{ action = "Lazy", desc = "Lazy", icon = "󰒲 ", key = "l" },
			{ action = "Telescope oldfiles", desc = "Old files", icon = " ", key = "o" },
			{
				action = function()
					vim.api.nvim_input("<cmd>qa<cr>")
				end,
				desc = "Quit",
				icon = " ",
				key = "q",
			},
		},
		footer = function()
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
		end,
	},
})
