-- instalação do lazy
-- Garante que o diretório de dados seja o do NeoVinicius
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Se a pasta não existir, ele CLONA o lazy.nvim agora
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  print("Instalando o Lazy.nvim... aguarde.")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim",
    "--branch=stable",
    lazypath,
  })
end

-- ESSA LINHA É A MAIS IMPORTANTE: Adiciona o lazy ao caminho de busca do Lua
vim.opt.rtp:prepend(lazypath)

-- 2. Agora o Neovim sabe o que é o "lazy"
-- Seus plugins e configurações vêm aqui embaixo...
require("core.leaderkey")
require("lazy").setup("plugins")
require("core.keymaps")
--catppuccin
require("core.themes")
