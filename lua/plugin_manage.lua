return require('packer').startup(function(use)
	-- usein Manage
	use { 'wbthomason/packer.nvim' }

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter' }

	-- File Explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- Theme
	use { "rebelot/kanagawa.nvim" }

	-- Search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Statusline
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Tabline
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	-- Keybindings
	use { "folke/which-key.nvim" }

	-- Terminal
	use { 'voldikss/vim-floaterm' }

	-- Lsp
	use { 'neovim/nvim-lspconfig' }

	use { 'williamboman/mason-lspconfig.nvim' }

	use { 'williamboman/mason.nvim' }

	-- Cmp
	use { 'hrsh7th/cmp-nvim-lsp' }

	use { 'hrsh7th/cmp-buffer' }

	use { 'hrsh7th/cmp-path' }

	use { 'hrsh7th/cmp-cmdline' }

	use { 'hrsh7th/nvim-cmp' }

	use { 'hrsh7th/vim-vsnip' }
end)