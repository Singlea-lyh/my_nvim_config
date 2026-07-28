-- =============================================================================
-- minimove.lua - 文本移动插件
-- =============================================================================
-- 使用 Alt+h/j/k/l 在普通/可视模式下移动选中文本或整行

return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.move").setup({
      mappings = {
        left       = "<A-h>",
        right      = "<A-l>",
        down       = "<A-j>",
        up         = "<A-k>",
        line_left  = "<A-h>",
        line_right = "<A-l>",
        line_down  = "<A-j>",
        line_up    = "<A-k>",
      },
    })
  end,
}
