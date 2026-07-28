-- =============================================================================
-- treesitter.lua - 语法解析与高亮插件
-- =============================================================================
-- 基于 Treesitter 的增量语法解析，提供更精确的语法高亮和代码分析

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "c", "cpp", "rust", "python", "go", "lua", "vim", "vimdoc",
    },
    highlight = { enable = true },
    fold = { enable = true },
  },
}
