local M = {}

M.config = function ()
  lvim.builtin.telescope.defaults.file_ignore_patterns = {
    "**/target/",
  }
end

return M
