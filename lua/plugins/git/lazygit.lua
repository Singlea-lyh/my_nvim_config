-- =============================================================================
-- lazygit.lua - LazyGit 集成插件
-- =============================================================================
-- 在 Neovim 内嵌 LazyGit TUI，提供完整的 Git 图形化操作界面

return {
  "kdheepak/lazygit.nvim",
  cmd = { "LazyGit", "LazyGitCurrentFile" },
  keys = {
    { "<leader>gg", ":LazyGit<CR>", desc = "打开 LazyGit" },
  },
  dependencies = { "nvim-lua/plenary.nvim" },
}
