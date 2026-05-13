return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require('lspconfig')
    
    -- Lista dos servidores para Web
    local servers = { "html", "cssls", "ts_ls", "emmet_ls" }

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        -- aqui vai a configuração padrão
      })
    end
  end
}
