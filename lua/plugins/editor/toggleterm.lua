-- =============================================================================
-- toggleterm.lua - 终端集成插件
-- =============================================================================
-- 在 Neovim 内快速打开浮动/底部终端，支持自定义 Shell

return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<leader>t]],
      direction = "horizontal",
      close_on_exit = true,
      auto_scroll = true,
      on_exit = function(term, job, exit_code, name)
        vim.cmd("redraw!")
      end,
    })
  end,
}
