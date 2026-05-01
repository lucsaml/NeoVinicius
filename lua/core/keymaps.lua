-- atalhos básicos
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = "Salvar arquivo"})
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Abrir explorador de arquivos"})

-- Tab para ir pra próxima, Shift+Tab para voltar
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true })
-- Alt + q para fechar a aba atual
vim.keymap.set('n', '<A-q>', ':bd<CR>', { silent = true })
