local M = {}

M.config = function()
  lvim.plugins = {
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
    { "vim-test/vim-test" },
    { "RishabhRD/popfix" },
    { "RishabhRD/nvim-lsputils" },
    {
      "akinsho/flutter-tools.nvim",
      config = function()
        require("flutter-tools").setup{
          flutter_path = os.getenv("PWD") .. "/.fvm/flutter_sdk/bin/flutter",
          debugger = {
            enabled = true,
          }
        }
      end,
    }
  }
end

return M
