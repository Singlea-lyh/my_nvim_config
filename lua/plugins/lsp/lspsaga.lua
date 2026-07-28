-- =============================================================================
-- lspsaga.lua - LSP UI 增强插件
-- =============================================================================
-- 提供更美观的 LSP 交互界面，包括代码动作、诊断、重命名、悬浮文档等

return {
  "nvimdev/lspsaga.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },
  opts = {
    lightbulb = {
      enable = false,
    },
  },
}
