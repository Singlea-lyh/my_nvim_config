-- =============================================================================
-- yazi.lua - Yazi 终端文件管理器集成
-- =============================================================================
-- 在 Neovim 内快速打开 Yazi 文件管理器进行文件浏览和操作

return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },
  keys = {
    {
      "<leader>-",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "打开鸭子文件管理器",
    },
  },
  opts = {
    open_for_directories = false,
    keymaps = {
      show_help = "<f1>",
    },
  },
  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
