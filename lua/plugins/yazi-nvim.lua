return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    -- Atalho para abrir o Yazi onde você está
    {
      "<leader>y",
      "<cmd>Yazi<cr>",
      desc = "Abrir o Yazi",
    },
    -- Abrir o Yazi no diretório do arquivo atual
    {
      "<leader>cw",
      "<cmd>Yazi cwd<cr>",
      desc = "Abrir o Yazi no diretório atual",
    },
  },
  opts = {
    open_for_directories = false, -- Não abre o Yazi automaticamente ao abrir pastas
    keymaps = {
      show_help = "<f1>", -- Atalho para ajuda dentro do Yazi
    },
  },
}
