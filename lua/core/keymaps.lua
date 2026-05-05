-- atalhos básicos
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Salvar arquivo"})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Abrir explorador de arquivos"})

-- Tab para ir pra próxima, Shift+Tab para voltar
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
-- Alt + q para fechar a aba atual
vim.keymap.set('n', '<A-q>', ':bd<CR>', { silent = true })
vim.keymap.set('n', '<leader>e', ':Yazi<CR>', { silent = true, desc = "Yazi explorer"})

-- atalho do lazygit
vim.keymap.set("n", "<leader>gg", "<CMD>Neogit<CR>", { noremap = true, silent = true, desc = "neogit Floating" })

-- pular para outro erro
vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, { silent = true, desc = "erro anterior"})

-- mensagem completa
vim.keymap.set('n', '<leader>of', function() vim.diagnostic.open_float() end, { silent = true, desc = "mensagem completa"})

-- code actions
vim.keymap.set('n', '<leader>ca', function() vim.diagnostic.code_action() end, { silent = true, desc = "code actions"})

