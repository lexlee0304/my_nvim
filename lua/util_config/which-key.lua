local wk = require("which-key")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim Tree" },
		p = { "<cmd>lua require'telescope'.extensions.project.project{ base_dirs = { '~/.config/nvim', '~/workspace/ByteRTC_main' } }<cr>", "Telescope project" }
	},
	t = {
		name = 'terminal',
		t = { "<cmd>FloatermToggle<cr>", "Toggle Floaterm" },
	},
	g = {
		name = 'git',
		g = { "<cmd>FloatermNew --autoclose=1.0 --width=1.0 --height=1.0 lazygit<cr>", "Open lazygit" },
		df = { "<cmd>DiffviewFileHistory<cr>", "Diffview FileHistory" },
		dt = { "<cmd>DiffviewToggleFiles<cr>", "Diffview Files Toggle" },
		dx = { "<cmd>DiffviewClose<cr>" , "Diffview Files Close" },
		dc = { "<cmd>Gitsigns diffthis<cr>", "Gitsigns diffthis" },
	}
}, { prefix = "<leader>" })
