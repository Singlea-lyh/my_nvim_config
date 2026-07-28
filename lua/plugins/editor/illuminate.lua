-- =============================================================================
-- illuminate.lua - 相同单词高亮插件
-- =============================================================================
-- 自动高亮光标所在位置的所有相同单词，便于识别变量使用位置

return {
  "RRethy/vim-illuminate",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    delay = 200,
    large_file_cutoff = 2000,
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
