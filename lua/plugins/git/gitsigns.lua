-- =============================================================================
-- gitsigns.lua - Git 状态显示插件
-- =============================================================================
-- 在编辑器的行号列旁显示 Git 增删改标记，支持 Hunk 跳转

return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add          = { text = "▎" },
      change       = { text = "▎" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "▎" },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns
    end,
  },
}
