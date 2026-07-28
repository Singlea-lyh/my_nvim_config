-- =============================================================================
-- lspconfig.lua - LSP 服务器配置
-- =============================================================================
-- Mason 与 nvim-lspconfig 桥接，自动配置 LSP 客户端能力、诊断样式等

return {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local keymaps = require("config.keymaps")
    local on_attach = keymaps.lsp_on_attach

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
    if has_cmp then
      capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
    end

    vim.diagnostic.config({
      virtual_text = {
        prefix = "●",
      },
      signs = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        border = "rounded",
        source = "always",
      },
    })

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
      },
      automatic_installation = function(server_name)
        return server_name ~= "rust_analyzer"
      end,
    })
  end,
}
