require('lspconfig').rust_analyzer.setup({
	settings ={
		['rust_analyzer'] = {
			checkOnSave = {
				command = "clippy",
			},
			procMacro = {
				enable = true
			},
		}
	}
})

vim.opt_local.shiftwidth = 4
vim.opt_local.softtabstop = 4
vim.opt_local.expandtab = true
