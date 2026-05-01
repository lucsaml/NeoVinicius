return {
  -- 1. Configura o ambiente Lua para desenvolvimento de plugins
  {
    "folke/lazydev.nvim",
    ft = "lua", -- carrega apenas em arquivos .lua
    opts = {
      library = {
        -- Carrega os tipos do Neovim (substitui o luvit-meta antigo)
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },

  -- 2. Configuração do Servidor de Linguagem (LSP)
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Ativa o servidor de Lua com as configurações recomendadas
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            completion = {
              callSnippet = "Replace",
            },
            -- Nota: O lazydev.nvim já cuida do 'globals = {"vim"}' automaticamente!
          },
        },
      })
    end,
  },
}

