-- =============================================================================
-- neominimap.lua - 代码迷你地图插件
-- =============================================================================
-- 在窗口侧边显示代码缩略图，支持全局/窗口/标签页/缓冲区级别控制

return {
  "Isrothy/neominimap.nvim",
  version = "v3.x.x",
  event = { "BufReadPost", "BufNewFile" },
  keys = {
    { "<leader>nm", "<cmd>Neominimap Toggle<cr>", desc = "切换全局迷你地图" },
    { "<leader>no", "<cmd>Neominimap Enable<cr>", desc = "启用全局迷你地图" },
    { "<leader>nc", "<cmd>Neominimap Disable<cr>", desc = "禁用全局迷你地图" },
    { "<leader>nr", "<cmd>Neominimap Refresh<cr>", desc = "刷新全局迷你地图" },
    { "<leader>nwt", "<cmd>Neominimap WinToggle<cr>", desc = "切换当前窗口的迷你地图" },
    { "<leader>nwr", "<cmd>Neominimap WinRefresh<cr>", desc = "刷新当前窗口的迷你地图" },
    { "<leader>nwo", "<cmd>Neominimap WinEnable<cr>", desc = "启用当前窗口的迷你地图" },
    { "<leader>nwc", "<cmd>Neominimap WinDisable<cr>", desc = "禁用当前窗口的迷你地图" },
    { "<leader>ntt", "<cmd>Neominimap TabToggle<cr>", desc = "切换当前标签页的迷你地图" },
    { "<leader>ntr", "<cmd>Neominimap TabRefresh<cr>", desc = "刷新当前标签页的迷你地图" },
    { "<leader>nto", "<cmd>Neominimap TabEnable<cr>", desc = "启用当前标签页的迷你地图" },
    { "<leader>ntc", "<cmd>Neominimap TabDisable<cr>", desc = "禁用当前标签页的迷你地图" },
    { "<leader>nbt", "<cmd>Neominimap BufToggle<cr>", desc = "切换当前缓冲区的迷你地图" },
    { "<leader>nbr", "<cmd>Neominimap BufRefresh<cr>", desc = "刷新当前缓冲区的迷你地图" },
    { "<leader>nbo", "<cmd>Neominimap BufEnable<cr>", desc = "启用当前缓冲区的迷你地图" },
    { "<leader>nbc", "<cmd>Neominimap BufDisable<cr>", desc = "禁用当前缓冲区的迷你地图" },
    { "<leader>nf", "<cmd>Neominimap Focus<cr>", desc = "聚焦到迷你地图" },
    { "<leader>nu", "<cmd>Neominimap Unfocus<cr>", desc = "取消聚焦迷你地图" },
    { "<leader>ns", "<cmd>Neominimap ToggleFocus<cr>", desc = "切换迷你地图聚焦" },
  },
  init = function()
    vim.opt.wrap = false
    vim.opt.sidescrolloff = 36
    vim.g.neominimap = {
      auto_enable = true,
    }
  end,
}
