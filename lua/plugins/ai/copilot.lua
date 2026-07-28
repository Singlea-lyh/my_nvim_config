-- =============================================================================
-- copilot.lua - GitHub Copilot AI 补全插件
-- =============================================================================
-- 提供基于 AI 的代码补全建议，按 Alt+w 接受建议

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = false,
        keymap = {
          accept = "<A-w>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
    })
  end,
}
