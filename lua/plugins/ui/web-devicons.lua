-- =============================================================================
-- web-devicons.lua - 文件类型图标配置
-- =============================================================================
-- 为各种文件类型提供 Nerd Font 图标，用于文件树、标签栏、Telescope 等

return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override = {
        lua = { icon = "", color = "#7dcfff", name = "lua" },
      },
      override_by_extension = {
        slint = { icon = "", color = "#7dcfff", name = "slint" },
        js = { icon = "", color = "#e0af68", name = "js" },
        ts = { icon = "", color = "#7dcfff", name = "ts" },
        tsx = { icon = "", color = "#7dcfff", name = "tsx" },
        py = { icon = "", color = "#bb9af7", name = "py" },
        rs = { icon = "", color = "#ff007c", name = "rs" },
        go = { icon = "", color = "#2ac3de", name = "go" },
        html = { icon = "", color = "#f7768e", name = "html" },
        css = { icon = "", color = "#7dcfff", name = "css" },
        json = { icon = "", color = "#e0af68", name = "json" },
        md = { icon = "", color = "#c0caf5", name = "md" },
      },
    })
  end,
}
