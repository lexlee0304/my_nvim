local wk = require("which-key")
local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float"})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
		g = { "<cmd>Telescope live_grep<cr>", "Live Grep"},
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim Tree" },
		p = { "<cmd>lua require'telescope'.extensions.project.project{ base_dirs = { '~/.config/nvim', '~/workspace/ByteRTC_main' } }<cr>", "Telescope project" }
	},
	t = {
		name = 'terminal',
		t = { "<cmd>FloatermToggle<cr>", "Toggle Floaterm" },
	},
	g = {
		name = 'git',
		g = { "<cmd>lua _lazygit_toggle()<cr>", "Toggle lazygit" },
		df = { "<cmd>DiffviewFileHistory<cr>", "Diffview FileHistory" },
		dt = { "<cmd>DiffviewToggleFiles<cr>", "Diffview Files Toggle" },
		dx = { "<cmd>DiffviewClose<cr>" , "Diffview Files Close" },
		dc = { "<cmd>Gitsigns diffthis<cr>", "Gitsigns diffthis" },
		s = {"<cmd>lua require('telescope.builtin').git_status()<cr>", "Git Status"},
		l = {"<cmd>lua require('telescope.builtin').git_commits()<cr>", "Git commits"}
	},
	l = {
		r = { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "lsp references"},
		d = { "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", 'lsp definitions'},
	}
}, { prefix = "<leader>" })
