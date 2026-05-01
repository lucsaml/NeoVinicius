return {
  -- 1. Plugin de cores (Catppuccin)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 10000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        integrations = {
          bufferline = true,
          lualine = true,
          gitsigns = true,
        },
      })
      -- Aplica o tema logo após configurar
      vim.cmd.colorscheme "catppuccin"
    end
  },

  -- 2. Outros plugins
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true
  },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "onsails/lspkind.nvim" },
}

