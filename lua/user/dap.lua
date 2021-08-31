local M = {}

M.config = function ()
  local status_ok, dap = pcall(require, "dap")
  if not status_ok then
    return
  end

  dap.configurations.dart = {
    {
      type = "dart",
      --request = "launch",
      request = 'attach',
      --name = "Launch flutter",
      name = "Attach to running dart process",
      host = function ()
        local value = vim.fn.input("Host [127.0.0.1]: ")
        if value ~= "" then
          return value  
        end
        return "127.0.0.1"
      end,
      port = function ()
        local val = tonumber(vim.fn.input("Port: "))
        assert(val, "Please provide a port number")
        return val
      end,
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
