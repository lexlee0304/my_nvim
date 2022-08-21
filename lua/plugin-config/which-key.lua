local wk = require("which-key")

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"},
		tf = { "<cmd>NvimTreeFocus<cr>", "Foucus Nvim Tree" },
		tt = { "<cmd>NvimTreeToggle<cr>", "Toggle Nvim Tree" },
	},
	t = {
		name = 'terminal',
		t = { "<cmd>FloatermToggle<cr>", "Toggle Floaterm" },
	},
	g = {
		name = 'git',
		g = { "<cmd>FloatermNew --autoclose=1.0 --width=1.0 --height=1.0 lazygit<cr>", "Open lazygit" },
	}
}, { prefix = "<leader>" })
