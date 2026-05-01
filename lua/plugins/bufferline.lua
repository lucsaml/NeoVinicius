return {
  'akinsho/bufferline.nvim', -- esse plugins coloca aquelas abas lá em cima
  dependencies = 'nvim-tree/nvim-web-devicons',
  version = "*",
  opts = {
    options = {
      offsets = {
        {
          filetype = "NvimTree", -- Se você usar o NvimTree, ele empurra as abas pro lado
          text = "File Explorer",
          text_align = "left",
          separator = true,
        }
      },
      color_icons = true,
      show_buffer_icons = true,
      separator_style = "thin",
    }
  }
}

