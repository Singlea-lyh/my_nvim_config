-- =============================================================================
-- rainbow.lua - 彩虹括号插件
-- =============================================================================
-- 使用不同颜色高亮配对的括号，帮助识别嵌套层级

return {
  "HiPhish/rainbow-delimiters.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    local rainbow_delimiters = require("rainbow-delimiters")
    vim.g.rainbow_delimiters = {
      strategy = {
        [""] = rainbow_delimiters.strategy.global,
      },
      query = {
        [""] = "rainbow-delimiters",
      },
    }
  end,
}
