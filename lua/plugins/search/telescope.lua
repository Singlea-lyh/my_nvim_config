-- =============================================================================
-- telescope.lua - 模糊搜索插件
-- =============================================================================
-- 强大的模糊搜索框架，支持文件查找、内容搜索、符号搜索、帮助文档等

return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
        },
        sorting_strategy = "ascending",
        prompt_prefix = "  ",
        selection_caret = "  ",
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
            ["<Esc>"] = actions.close,
          },
        },
        file_ignore_patterns = {
          "node_modules", ".git/", "dist/", "build/", "%.lock",
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })

    pcall(telescope.load_extension, "fzf")
  end,
}
