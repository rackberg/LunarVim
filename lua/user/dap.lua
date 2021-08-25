local M = {}

M.config = function ()
  local status_ok, dap = pcall(require, "dap")
  if not status_ok then
    return
  end

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

  dap.configurations.java = {
    {
      type = "java",
      request = "launch",
      name = "Launch current file",
      javaExec = "java",
      mainClass = "${file}",
    }
  }
end

return M
