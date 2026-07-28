-- =============================================================================
-- neogen.lua - 文档注释自动生成插件
-- =============================================================================
-- 根据代码结构自动生成函数、类、文件的文档注释（支持 Doxygen/RustDoc/GoDoc 等）

return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({
      enabled = true,
      input_after_comment = true,
      snippet_engine = "luasnip",
      languages = {
        c = { template = { annotation_convention = "doxygen" } },
        rust = { template = { annotation_convention = "rustdoc" } },
        python = { template = { annotation_convention = "google_docstrings" } },
        go = { template = { annotation_convention = "godoc" } },
      },
    })
  end,
  keys = {
    {
      "<leader>Nf",
      function()
        require("neogen").generate({ type = "func" })
      end,
      desc = "Neogen: 生成函数注释",
    },
    {
      "<leader>Nc",
      function()
        require("neogen").generate({ type = "class" })
      end,
      desc = "Neogen: 生成类/结构体注释",
    },
    {
      "<leader>NF",
      function()
        require("neogen").generate({ type = "file" })
      end,
      desc = "Neogen: 生成文件头注释",
    },
    {
      "<leader>Ng",
      function()
        require("neogen").generate()
      end,
      desc = "Neogen: 生成注释",
    },
  },
}
