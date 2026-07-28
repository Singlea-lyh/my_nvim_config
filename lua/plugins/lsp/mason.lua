-- =============================================================================
-- mason.lua - LSP/DAP/格式化工具安装管理器
-- =============================================================================
-- 提供图形化界面一键安装和管理 LSP 服务器、DAP 适配器、格式化工具

return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  build = ":MasonUpdate",
  opts = {
    ui = {
      border = "rounded",
      icons = {
        package_installed   = "✓",
        package_pending     = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
