-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim" 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'navarasu/onedark.nvim'

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	})
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use 'L3MON4D3/LuaSnip'              -- Snippet engine
	use 'saadparwaiz1/cmp_luasnip'      -- Snippet completion source
	use "mlaursen/vim-react-snippets"
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'lewis6991/gitsigns.nvim'

	-- Prettier
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'nvim-lua/plenary.nvim'  -- Required dependency for null-ls
	
	-- copilot chat
	use "CopilotC-Nvim/CopilotChat.nvim"	
end)


