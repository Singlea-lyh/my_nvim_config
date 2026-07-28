-- =============================================================================
-- notify.lua - 通知消息美化插件
-- =============================================================================
-- 替代默认 vim.notify，提供美观的浮动通知弹窗

return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 3000,
    max_width = 50,
    render = "compact",
    stages = "fade",
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    vim.notify = notify
  end,
}
