return {
	{
    'CRAG666/code_runner.nvim',
    config = function()
      require('code_runner').setup({
        filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python3 -u",
          typescript = "deno run",
          rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	  html = "firefox $fileName",

        },
      })
      -- Atalho: <leader>r para rodar o arquivo atual
      vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = true, desc = "Run Code" })
    end
  },

  -- Overseer: Para tarefas pesadas (Gradle/Maven)
  {
    'stevearc/overseer.nvim',
    opts = {
      templates = { "builtin" },
      task_list = {
        direction = "right", -- Abre na lateral como uma IDE
        bindings = {
          ["<C-l>"] = false, -- Evita conflito com seus atalhos
        },
      },
    },
    config = function(_, opts)
      require('overseer').setup(opts)
      -- Atalhos para o Overseer
      vim.keymap.set('n', '<leader>ot', '<cmd>OverseerToggle<cr>', { desc = "Overseer Task List" })
      vim.keymap.set('n', '<leader>or', '<cmd>OverseerRun<cr>', { desc = "Overseer Run Task" })
    end
  }	
}
