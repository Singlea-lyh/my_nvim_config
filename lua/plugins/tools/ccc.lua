-- =============================================================================
-- ccc.lua - 颜色拾取器插件
-- =============================================================================
-- 在代码中高亮显示颜色值，并提供调色盘界面进行颜色选择和修改

return {
  "uga-rosa/ccc.nvim",
  keys = {
    { "<leader>p", "<cmd>CccPick<CR>", desc = "打开调色盘" },
  },
  config = function()
    local ccc = require("ccc")
    ccc.setup({
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    })
  end,
}
