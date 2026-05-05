return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-\>]], -- Atalho Ctrl + \ para abrir/fechar
      direction = 'float',
      float_opts = {
        border = 'curved',
        winblend = 3, -- Uma leve transparência na janela flutuante
      },
    })
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new({ 
      cmd = "lazygit", 
      hidden = true, 
      direction = "float" 
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end
  end
}

