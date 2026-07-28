local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  print("正在安装 lazy.nvim，请稍候...")
  vim.fn.system({
    "git", "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins.ui" },
    { import = "plugins.editor" },
    { import = "plugins.search" },
    { import = "plugins.lsp" },
    { import = "plugins.completion" },
    { import = "plugins.git" },
    { import = "plugins.lang" },
    { import = "plugins.debug" },
    { import = "plugins.ai" },
    { import = "plugins.tools" },
  },

  install = {
    colorscheme = { "catppuccin", "habamax" },
  },

  checker = {
    enabled = true,
    notify = false,
    frequency = 3600,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },

  ui = {
    border = "rounded",
  },
})
