return {
{ "mfussenegger/nvim-jdtls" },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      -- Isso aqui faz o Mason baixar os LSPs sozinho se não existirem
      ensure_installed = { "pyright", "clangd", "jdtls" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- Ativa o Python
      lspconfig.pyright.setup({})
      -- Ativa o C/C++
      lspconfig.clangd.setup({})
    end,
  }
}
