-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use { "catppuccin/nvim", as = "catppuccin" }
	use {'nvim-treesitter/playground'}
	use {'theprimeagen/harpoon'}
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
	use 'neovim/nvim-lspconfig'
	use {
		"williamboman/mason.nvim"
	}
	use {
		"williamboman/mason-lspconfig.nvim",
	}

	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'	
	use {'hrsh7th/nvim-cmp', requires = {'hrsh7th/vim-vsnip'}}
	use 'neoclide/coc.nvim'
	use 'vim-airline/vim-airline'
	use 'tpope/vim-commentary'
end)

