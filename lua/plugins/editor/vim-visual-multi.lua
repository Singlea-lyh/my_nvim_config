-- =============================================================================
-- vim-visual-multi.lua - 多光标编辑插件
-- =============================================================================
-- 类似 VSCode 的多光标编辑，支持 Ctrl+N 逐个选中、全选匹配、列模式等

return {
  "mg979/vim-visual-multi",
  branch = "master",
  lazy = false,
  init = function()
    vim.g.VM_default_mappings = 1
    vim.g.VM_mouse_mappings = 1
    vim.g.VM_show_warnings = 1

    vim.g.VM_maps = {
      ["Find Under"]          = "<C-n>",
      ["Find Subword Under"]  = "<C-n>",
      ["Select All"]          = "<leader>A",
      ["Start Regex Search"]  = "<leader>/",
      ["Add Cursor Down"]     = "<C-Down>",
      ["Add Cursor Up"]       = "<C-Up>",
      ["Add Cursor At Pos"]   = "<C-g><C-g>",
      ["Visual Add"]          = "<leader>a",
      ["Visual Cursors"]      = "<leader>c",
      ["Visual Find"]         = "<leader>f",
      ["Visual All"]          = "<leader>A",
      ["Visual Regex"]        = "<leader>/",
      ["Switch Mode"]         = "<Tab>",
      ["Find Next"]           = "n",
      ["Find Prev"]           = "N",
      ["Goto Next"]           = "}",
      ["Goto Prev"]           = "{",
      ["Skip Region"]         = "q",
      ["Remove Region"]       = "Q",
      ["Exit"]                = "<C-;>",
      ["Find Operator"]       = "m",
      ["Surround"]            = "S",
      ["Replace Pattern"]     = "R",
      ["Toggle Whole Word"]   = "<leader>w",
      ["Align"]               = "<leader>t",
      ["Transpose"]           = "<leader>y",
      ["Duplicate"]           = "<leader>d",
      ["Rewrite Last Search"] = "<leader>r",
      ["Run Normal"]          = "<leader>z",
      ["Run Visual"]          = "<leader>v",
      ["Run Ex"]              = "<leader>x",
      ["Run Macro"]           = "<leader>@",
      ["Undo"]                = "u",
      ["Redo"]                = "<C-r>",
      ["Mouse Cursor"]        = "<C-LeftMouse>",
      ["Mouse Word"]          = "<C-RightMouse>",
      ["Mouse Column"]        = "<M-C-RightMouse>",
    }
  end,
  config = function()
    vim.cmd([[
      highlight! VM_Cursor gui=bold guibg=#e53935 guifg=#ffffff blend=0
      highlight! VM_Extend gui=bold guibg=#fb8c00 guifg=#ffffff blend=0
      highlight! VM_Insert gui=bold guibg=#43a047 guifg=#1e1e1e blend=0
      highlight! VM_Select guibg=#5c6370 guifg=#abb2bf blend=0
    ]])
    vim.g.VM_regex_engine = 1
    vim.g.VM_message_timeout = 2000
    vim.g.VM_insert_mappings = 1
  end,
  keys = {
    { "<leader>mn", "<Plug>(VM-Find-Under)", mode = "n", desc = "VM: 选中单词(下一个)" },
    { "<leader>ma", "<Plug>(VM-Select-All)", mode = "n", desc = "VM: 全选匹配" },
    { "<leader>mc", "<Plug>(VM-Visual-Cursors)", mode = "v", desc = "VM: Visual转光标" },
    { "<leader>mf", "<Plug>(VM-Visual-Find)", mode = "v", desc = "VM: Visual查找" },
    { "<leader>mr", "<Plug>(VM-Start-Regex-Search)", mode = "n", desc = "VM: 正则搜索" },
    { "<leader>mp", "<Plug>(VM-Add-Cursor-At-Pos)", mode = "n", desc = "VM: 在此添加光标" },
  },
}
