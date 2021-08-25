local M = {}

M.config = function ()
  local status_ok, jdtls = pcall(require, "jdtls")
  if not status_ok then
    return
  end

  jdtls.config['init_options'] = {
    bundles = {
      vim.fn.glob("/opt/java-debug-0.32.0/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
    };
  }
  jdtls.on_attach = function(client, bufnr)
    require('jdtls').setup_dap({ hotcodereplace = 'auto' })
  end
end

return M
