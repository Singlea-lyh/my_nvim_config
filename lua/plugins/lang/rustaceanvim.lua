-- =============================================================================
-- rustaceanvim.lua - Rust LSP 增强插件
-- =============================================================================
-- 专为 Rust 设计的 LSP 集成插件，提供比标准 rust-analyzer 更丰富的功能

return {
  "mrcjkb/rustaceanvim",
  ft = { "rust" },
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "mfussenegger/nvim-dap",
  },
  opts = {
    server = {
      standalone = true,
    },
  },
  config = function(_, opts)
    vim.g.rustaceanvim = opts
  end,
}
