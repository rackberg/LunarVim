-- if lvim.lang.dart.active then
  require("lsp").setup "dart"
-- end

if lvim.builtin.dap.active then
  local dap_install = require "dap-install"
  dap_install.config("dart_dbg", {})

  local dap = require "dap"

  dap.configurations.dart = {
    {
      type = "dart",
      request = "launch",
      name = "Launch flutter",
      dartSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/bin/cache/dart-sdk/",
      flutterSdkPath = "${workspaceFolder}/.fvm/flutter_sdk/",
      program = "${workspaceFolder}/lib/main.dart",
      cwd = "${workspaceFolder}"
    }
  }
end
