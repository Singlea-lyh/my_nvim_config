-- =============================================================================
-- lualine.lua - 底部状态栏插件
-- =============================================================================
-- 显示当前模式、Git 分支、LSP 诊断、文件名、编码、文件类型、行号/列号等

return {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim",
  },
  opts = {
    options = {
      component_separators = "|",
      section_separators = "",
      globalstatus = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch", "diagnostics" },
      lualine_c = { { "filename", path = 1 } },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
  },
}
