-- =============================================================================
-- noice.lua - 命令行与消息弹窗美化插件
-- =============================================================================
-- 美化命令行、搜索、消息通知等界面，提供更现代的 UI 体验

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    cmdline = {
      view = "cmdline_popup",
      format = {
        search_down = { icon = " " },
        search_up = { icon = " " },
      },
    },
    messages = {
      enabled = true,
      view = "notify",
      view_error = "notify",
      view_warn = "notify",
      view_history = "messages",
      view_search = "virtualtext",
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
      kind_icons = true,
    },
    views = {
      cmdline_popup = {
        position = { row = 2, col = "50%" },
        size = { width = 60, height = "auto" },
        border = { style = "rounded", padding = { 0, 1 } },
        win_options = {
          winhighlight = {
            Normal = "Normal",
            FloatBorder = "FloatBorder",
          },
        },
      },
      popupmenu = {
        relative = "editor",
        position = { row = 8, col = "50%" },
        size = { width = 60, height = 10 },
        border = { style = "rounded", padding = { 0, 1 } },
        win_options = {
          winhighlight = {
            Normal = "Normal",
            FloatBorder = "FloatBorder",
          },
        },
      },
      notify = {
        position = { row = 3, col = "50%" },
        size = { width = 50, height = "auto" },
        border = { style = "rounded" },
      },
    },
    routes = {
      { view = "cmdline_popup", filter = { event = "cmdline", kind = "search" } },
      { view = "cmdline_popup", filter = { event = "cmdline", kind = ":" } },
      { view = "cmdline_popup", filter = { event = "cmdline", kind = "/" } },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = true,
      lsp_doc_border = true,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
