local jdtls = require('jdtls')

local project_name = vim.fn.fnamemodify(vim.fs.dirname(vim.fs.find({'.git', 'gradlew', 'mvnw'}, { upward = true })[1]), ':t')
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

local config = {
  cmd = { "jdtls", "-data", workspace_dir },
  root_dir = require('jdtls.setup').find_root({'.git', 'gradlew', 'mvnw'}),
}

jdtls.start_or_attach(config)
