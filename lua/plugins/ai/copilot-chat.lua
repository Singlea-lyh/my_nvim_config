-- =============================================================================
-- copilot-chat.lua - GitHub Copilot 聊天插件
-- =============================================================================
-- 在 Neovim 内与 GitHub Copilot 进行交互式聊天，辅助代码理解和生成

return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  build = "make tiktoken",
  opts = {
    window = {
      layout = "vertical",
      width = 0.4,
    },
  },
}
