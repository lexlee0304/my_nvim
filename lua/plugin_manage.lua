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
	use 'folke/tokyonight.nvim'

	use ({ 'projekt0n/github-nvim-theme' })
	use 'doums/darcula'
	use {'nyoom-engineering/oxocarbon.nvim'}

	use {
		'shaunsingh/nord.nvim',
		commit = "78f5f001709b5b321a35dcdc44549ef93185e024",
	}

	use 'navarasu/onedark.nvim'

	use({ 'rose-pine/neovim' })

	-- Search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'jose-elias-alvarez/null-ls.nvim',
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
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}

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

	use { 'skywind3000/asyncrun.vim' }

	use { 'skywind3000/asynctasks.vim' }

	use { 'nvim-telescope/telescope-project.nvim' }

	use { "nvim-telescope/telescope-file-browser.nvim" }

	use { 'onsails/lspkind-nvim' }

	-- Git
	use { 'lewis6991/gitsigns.nvim' }

	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

	-- Auto Save
	use({
		"Pocco81/auto-save.nvim",
		config = function()
			require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
			}
		end,
	})

    -- Auto Pair
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use 'Civitasv/cmake-tools.nvim'	

end)

