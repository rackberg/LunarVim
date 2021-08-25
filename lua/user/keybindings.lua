local M = {}

M.config = function ()
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Test",
    n = { "<cmd>TestNearest<cr>", "Run test near cursor position" },
    f = { "<cmd>TestFile<cr>", "Run all tests of open file" },
    s = { "<cmd>TestSuite<cr>", "Run all tests in Test Suite" },
    l = { "<cmd>TestLast<cr>", "Run last executed test again" },
    v = { "<cmd>TestVisit<cr>", "Go back to test file last executed" },
  }
end

return M
