return {
{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
 
{"folke/which-key.nvim"},
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300 -- Meio segundo para o menu aparecer
  end,
  opts = {
    -- Aqui você pode customizar o visual se quiser
  },
}

