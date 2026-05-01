return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'hyper',
      config = {
        week_header = {
          enable = false,
        },
        shortcut = {
          { desc = '   Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Apps',
            group = 'DiagnosticHint',
            action = 'Telescope oldfiles',
            key = 'a',
          },
          {
            desc = ' dotfiles',
            group = 'Number',
            action = 'Telescope find_files cwd=~/.config/NeoVinicius',
            key = 'd',
          },
        },
        -- O toque de mestre: O nome da config!
        header = {
          "",
          "  _   _              __     ___         _      _             ",
          " | \\ | | ___  ___    \\ \\   / (_)_ __   (_) ___(_)_   _ ___ ",
          " |  \\| |/ _ \\/ _ \\____\\ \\ / /| | '_ \\  | |/ __| | | | / __|",
          " | |\\  |  __/ (_) |____\\ V / | | | | | | | (__| | |_| \\__ \\",
          " |_| \\_|\\___|\\___/      \\_/  |_|_| |_| |_|\\___|_|\\__,_|___/",
          "                                                            ",
          "                  -- SEU FORSAKEN ESTÁ PRONTO --            ",
          "",
        },
      },
    })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}

