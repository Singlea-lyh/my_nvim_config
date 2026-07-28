-- =============================================================================
-- autopairs.lua - 自动括号配对插件
-- =============================================================================
-- 输入开括号时自动补全闭括号，支持 Treesitter 和快速跳出括号

return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      fast_wrap = {
        map = "<C-g>e", -- Ctrl+G e 跳到匹配括号外
        chars = { "{", "[", "(", '"', "'" },
        pattern = [=[[%'%"%>%]%)%}%,]]=],
        end_key = "$",
        keys = "qwertyuiopzxcvbnmasdfghjkl",
        check_comma = true,
        highlight = "Search",
        highlight_grey = "Comment",
      },
    })
  end,
}
