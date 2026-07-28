-- =============================================================================
-- neocodeium.lua - AI 代码补全插件（备用）
-- =============================================================================
-- Codeium 免费 AI 补全引擎（当前禁用），可按需启用替代 Copilot

return {
  "monkoose/neocodeium",
  enabled = false,
  event = "VeryLazy",
  config = function()
    local neocodeium = require("neocodeium")
    neocodeium.setup()
    vim.keymap.set("i", "<A-w>", neocodeium.accept, { desc = "接受 AI 补全建议" })
  end,
}
