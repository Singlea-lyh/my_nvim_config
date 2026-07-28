-- =============================================================================
-- ufo.lua - 代码折叠插件
-- =============================================================================
-- 基于 Treesitter 的智能代码折叠，支持关闭/展开所有折叠及当前折叠

return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  event = "BufReadPost",
  config = function()
    vim.o.foldmethod = "expr"
    vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99

    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })

    vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    vim.keymap.set("n", "zR", require("ufo").openAllFolds)
  end,
}
