-- =============================================================================
-- flutter.lua - Flutter/Dart 开发插件
-- =============================================================================
-- 提供 Flutter 开发支持，包括 LSP、设备选择、热重载等集成

return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    require("flutter-tools").setup({
      flutter_path = "/opt/flutter/bin/flutter",
      lsp = {
        color_render = true,
      },
    })
  end,
}
