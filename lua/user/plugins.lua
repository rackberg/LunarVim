local M = {}

M.config = function()
  lvim.plugins = {
    -- {
    --   "rackberg/flutter-tools.nvim",
    --   config = function()
    --     require("flutter-tools").setup{}
    --   end,
    -- }
    {
      "rcarriga/nvim-dap-ui",
      config = function ()
        require("dapui").setup()
      end,
      ft = { "dart" },
      requires = { "mfussenegger/nvim-dap" },
      disable = not lvim.builtin.dap.active,
    },
    { "mfussenegger/nvim-jdtls", ft = "java" },
  }
end

return M
 
