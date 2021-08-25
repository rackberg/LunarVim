--require("lsp").setup "java"

local status_ok, jdtls = pcall(require, "jdtls")
if not status_ok then
  return
end

local WORKSPACE_PATH

-- find root looks for parent directories relative to the current buffer containing one of the given arguments.
if vim.fn.has "mac" == 1 then
  WORKSPACE_PATH = "/Users/" .. USER .. "/workspace/"
elseif vim.fn.has "unix" == 1 then
  WORKSPACE_PATH = "/home/" .. USER .. "/workspace/"
else
  print "Unsupported system"
end

local JAVA_LS_EXECUTABLE = os.getenv "HOME" .. "/.local/share/lunarvim/lvim/utils/bin/jdtls"

jdtls.start_or_attach {
  on_attach = require("lsp").common_on_attach,
  cmd = { JAVA_LS_EXECUTABLE, WORKSPACE_PATH .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t") },
}

vim.api.nvim_set_keymap("n", "<leader>la", ":lua require('jdtls').code_action()<cr>", { noremap = true, silent = true })

vim.cmd "command! -buffer JdtCompile lua require('jdtls').compile()"
vim.cmd "command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()"
vim.cmd "command! -buffer JdtBytecode lua require('jdtls').javap()"
