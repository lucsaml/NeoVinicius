return {
  -- Mason e LSP
 {
    "williamboman/mason.nvim",
    config = true,
    },
  {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "lua_ls", "pyright", "jdtls", "clangd", "ts_ls", "html" },
    automatic_installation = true,
  },
},
  { "williamboman/mason-lspconfig.nvim", config = true },
  { "neovim/nvim-lspconfig" },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "onsails/lspkind.nvim",
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol_text',
            maxwidth = 50,
            ellipsis_char = '...',
          })
        },
        -- dá pra colocar mappings aki
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
        }),
      })
    end
  },
}

