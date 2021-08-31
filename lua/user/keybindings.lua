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

  lvim.builtin.which_key.mappings["F"] = {
    name = "+FlutterTools",
    d = { "<cmd>FlutterDevices<cr>", "Show connected devices" },
    e = { "<cmd>FlutterEmulators<cr>", "Show running emulators" },
    p = { "<cmd>FlutterPubGet<cr>", "Get packages from pub" },
    u = { "<cmd>FlutterPubUpgrade<cr>", "Upgrade packages from pub" },
    r = { "<cmd>FlutterReload<cr>", "Hot Reload" },
    R = { "<cmd>FlutterRestart<cr>", "Hot Restart" },
    Q = { "<cmd>FlutterQuit<cr>", "Exit Application" },
    V = { "<cmd>FlutterVisualDebug<cr>", "Toggle Visual Debug Lines" }
  }
end

return M
