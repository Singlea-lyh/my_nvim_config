-- =============================================================================
-- catppuccin.lua - 颜色主题插件
-- =============================================================================
-- Catppuccin 主题，提供 mocha 深色风格，与多种插件集成

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha",
    background = { light = "latte", dark = "mocha" },
    transparent_background = false,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      telescope = { enabled = true },
      lsp_trouble = true,
      which_key = true,
      indent_blankline = { enabled = true },
      notify = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
