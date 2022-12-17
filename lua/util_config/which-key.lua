local wk       = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.g.mapleader = " "
vim.g.maplocalleader = " "

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files hidden=true<cr>", "Find File" }, -- create a binding with label
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
		s = { "<cmd>lua require('telescope.builtin').grep_string()<cr>", "grep string" },
		t = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim Tree" },
		p = { "<cmd>lua require'telescope'.extensions.project.project{ display_type='full', sync_with_nvim_tree = true }<cr>",
			"Telescope project" }
	},
	t = {
		name = 'terminal',
		t = { "<cmd>ToggleTerm direction='vertical'<cr>", "Toggle Floaterm" },
		r = { "<cmd>ToggleTermSendCurrentLine<cr>", "ToggleTermSendCurrentLine" },
	},
	g = {
		name = 'git',
		g = { "<cmd>lua _lazygit_toggle()<cr>", "Toggle lazygit" },
		df = { "<cmd>DiffviewFileHistory<cr>", "Diffview FileHistory" },
		dt = { "<cmd>DiffviewToggleFiles<cr>", "Diffview Files Toggle" },
		dx = { "<cmd>DiffviewClose<cr>", "Diffview Files Close" },
		dc = { "<cmd>Gitsigns diffthis<cr>", "Gitsigns diffthis" },
		s = { "<cmd>lua require('telescope.builtin').git_status()<cr>", "Git Status" },
		l = { "<cmd>lua require('telescope.builtin').git_commits()<cr>", "Git commits" },
	},
	l = {
		r = { "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "lsp references" },
		d = { "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", 'lsp definitions' },
		e = { "<cmd>lua require('telescope.builtin').diagnostics()<cr>", 'lsp diagnostics' },
	},
	u = { "<cmd>:checktime<cr>", "update buffer" },
	w = {
		h = { "<c-w>h", "window left" },
		l = { "<c-w>l", "window right" },
	},
	j = {
		j = { "<c-u>", "page up" },
	},
	d = {
		d = { "<c-d>", "pading down"},
	}
}, { prefix = "<leader>" })
