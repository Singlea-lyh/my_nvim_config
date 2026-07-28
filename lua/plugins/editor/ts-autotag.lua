-- =============================================================================
-- ts-autotag.lua - HTML/JSX 标签自动处理插件
-- =============================================================================
-- 输入 HTML/JSX 开标签时自动闭合，修改标签名时同步更新配对标签

return {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
      },
    })
  end,
}
